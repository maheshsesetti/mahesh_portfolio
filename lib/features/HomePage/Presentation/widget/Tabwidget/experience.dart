import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.5,
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 48, color: Colors.white),
                    children: [
                  TextSpan(text: 'My'),
                  TextSpan(text: 'Experience')
                ])),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.business_center_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            "First LSI NextGen Private Limited",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Text('Jan 2023 - Nov 2023',
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("Flutter Developer",
                              style: TextStyle(color: Colors.white)),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
