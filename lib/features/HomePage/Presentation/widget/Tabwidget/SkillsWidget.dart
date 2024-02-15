import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 2,
      margin: const EdgeInsets.only(left: 40),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 15, mainAxisSpacing: 45, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(children: [
                Expanded(child: Image.asset('assets/images/github.png')),
                const Text('Github')
              ]),
            );
          }),
    );
    
  }
}
