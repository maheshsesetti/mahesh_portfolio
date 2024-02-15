import 'package:flutter/material.dart';

class MyProjectsWidget extends StatelessWidget {
  const MyProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProjectModel> projects = [
      ProjectModel(
          isAlign: true,
          text: "Face My Resume",
          images: "assets/images/project1.png",
          value: 01,
          description:
              "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book."),
      ProjectModel(
          isAlign: false,
          text: "AnyVCharger",
          images: "assets/images/image.png",
          value: 02,
          description:
              "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book."),
      ProjectModel(
          isAlign: true,
          text: "Recall Manifature",
          images: "assets/images/project1.png",
          value: 03,
          description:
              "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book."),
      ProjectModel(
          isAlign: false,
          text: "SUS Pro",
          images: "assets/images/image.png",
          value: 03,
          description:
              "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.")
    ];

    return Container(
      height: MediaQuery.sizeOf(context).height / 1.5,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
      color: Colors.black,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
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
            Expanded(
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return projects[index].isAlign == true
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox.square(
                                dimension: 350,
                                child: Image.asset(projects[index].images)),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 2.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(projects[index].value.toString(),
                                      style: const TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                  Text(projects[index].text,
                                      style: const TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                  Text(
                                    projects[index].description,
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 2.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(projects[index].value.toString(),
                                      style: const TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                  Text(projects[index].text,
                                      style: const TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                  Text(
                                    projects[index].description,
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox.square(
                                dimension: 350,
                                child: Image.asset(projects[index].images))
                          ],
                        );
                },
              ),
            )
          ]),
      // ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: (context, index) {
      //       final alignLeft = random.nextBool();
      //       return Padding(
      //           padding: EdgeInsets.symmetric(vertical: 8.0),
      //           child: Row(
      //             mainAxisAlignment: alignLeft
      //                 ? MainAxisAlignment.start
      //                 : MainAxisAlignment.end,
      //             children: [
      //               Container(
      //                 width: 100,
      //                 height: 100,
      //                 color: Colors.blue,
      //                 child: Center(child: Text('Image')),
      //               ),
      //               SizedBox(width: 8.0),
      //               Expanded(
      //                 child: Text('Random Text $index',
      //                     textAlign: alignLeft
      //                         ? TextAlign.left
      //                         : TextAlign.right),
      //               ),
      //             ],
      //           ));
      //     })
    );
  }
}

class ProjectModel {
  String text;
  String images;
  int value;
  String description;
  bool isAlign;
  ProjectModel(
      {required this.isAlign,
      required this.text,
      required this.images,
      required this.value,
      required this.description});
}
