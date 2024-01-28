import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: MediaQuery.sizeOf(context).height / 1.8,
      child: Row(children: [
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                        style: TextStyle(fontSize: 48),
                        children: [
                          TextSpan(text: 'Hello I’am '),
                          TextSpan(text: 'Mahesh Babu.\n'),
                          TextSpan(text: 'Flutter Developer \n'),
                          TextSpan(text: 'Based In '),
                          TextSpan(text: 'India.'),
                        ]))),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[350]),
                          children: const [
                            TextSpan(
                                text:
                                    "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.")
                          ]),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/images/linkedin.png')),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/images/github.png')),
                      )
                    ],
                  ))
                ],
              ),
            ))
          ],
        )),
        Expanded(child: Image.asset('assets/images/Frame 20.png'))
      ]),
    );
  }
}
