import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileAboutCandidateWidget extends StatelessWidget {
  const MobileAboutCandidateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.2,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Image.asset('assets/images/about_me.png'),
          Expanded(
              flex: 1,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: ListView(children: [
                  const Row(
                    children: [
                      Text(
                        'About',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("Me", style: TextStyle(fontSize: 30)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Text(
                      "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[350])),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[350])),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[350])),
                ]),
              ))
        ],
      ),
    );
  }
}
