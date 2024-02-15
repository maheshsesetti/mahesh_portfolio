import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello I’am Mahesh Babu.\nFlutter Developer\nBased In India.",
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
              const SizedBox(height: 10,),
                Text(
                  "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.",
                  style: TextStyle(fontSize: 16, color: Colors.grey[350]),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox.square(
                        dimension: 40,
                          child: Image.asset("assets/images/linkedin.png")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox.square(
                          dimension: 40,
                          child: Image.asset("assets/images/github.png")),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(child: Image.asset('assets/images/Frame 20.png')),
      ],
    );

  }
}
