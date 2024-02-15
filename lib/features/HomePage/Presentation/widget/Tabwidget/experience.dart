import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.sizeOf(context).height / 2,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          const Center(
              child: Text("My Experience",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          Expanded(
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
        ],
      ),
    );
  }
}
