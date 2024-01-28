import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      height: MediaQuery.sizeOf(context).height / 1.5,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: RichText(
                text: const TextSpan(style: TextStyle(fontSize: 48), children: [
              TextSpan(text: 'My'),
              TextSpan(text: 'Skills')
            ])),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 45,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Column(children: [
                        Expanded(
                            child: Image.asset('assets/images/github.png')),
                        const Text('Github')
                      ]),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
