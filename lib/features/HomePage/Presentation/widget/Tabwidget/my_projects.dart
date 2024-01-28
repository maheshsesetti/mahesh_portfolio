import 'package:flutter/material.dart';

class MyProjectsWidget extends StatelessWidget {
  const MyProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.2,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.black,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My",
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/github.png')),
                        const Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 48),
                                ),
                                Text("Crypto Screener Application",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32)),
                                Text(
                                  "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ))
                      ],
                    );
                  }),
            )
          ]),
    );
  }
}
