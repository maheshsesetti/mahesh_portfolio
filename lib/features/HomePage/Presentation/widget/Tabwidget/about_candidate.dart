import 'package:flutter/material.dart';

class AboutCandidateWidget extends StatelessWidget {
  const AboutCandidateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.2,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 100),
      child: Row(
        children: [
          Expanded(flex: 1, child: Image.asset('assets/images/about_me.png')),
          Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'About',
                            style: TextStyle(fontSize: 48),
                          ),
                          Text("Me", style: TextStyle(fontSize: 48)),
                        ],
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                            "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[350])),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                            "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[350])),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                            "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[350])),
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
