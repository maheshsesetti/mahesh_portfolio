import 'package:flutter/material.dart';


class MobileskillsWidget extends StatelessWidget {
  const MobileskillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.sizeOf(context).height / 2,
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, mainAxisSpacing: 10, crossAxisCount: 3),
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
      ),
    );
  }
}
