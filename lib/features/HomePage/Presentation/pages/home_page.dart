import 'package:flutter/material.dart';

import '../../../../responsive.dart';
import '../widget/NavSmall.dart';
import '../widget/Tabwidget/SkillsWidget.dart';
import '../widget/Tabwidget/about_candidate.dart';
import '../widget/Tabwidget/contact_me.dart';
import '../widget/Tabwidget/experience.dart';
import '../widget/Tabwidget/my_projects.dart';
import '../widget/navbar_item.dart';
import '../widget/Tabwidget/about_me.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  bool isScroll = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isScroll = _controller.offset <= 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AdaptiveNavBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: false,
        title: const ListTile(
          leading: Icon(
            Icons.business_center_outlined,
            size: 30,
          ),
          title: Text("Mahesh Portfolio"),
        ),
        screenWidth: MediaQuery.sizeOf(context).width,
        navBarItems: [
          NavBarItem(
              text: "About Me",
              onTap: () {
                _controller.animateTo(0.0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              }),
          NavBarItem(
              text: "Skills",
              onTap: () {
                _controller.animateTo(MediaQuery.sizeOf(context).height/1.5,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
              }),
          NavBarItem(text: "Project", onTap: () {
              _controller.animateTo(MediaQuery.sizeOf(context).height * 1.4,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
          }),
          NavBarItem(
              text: "Contact me",
              onTap: () {
                _controller.animateTo( _controller.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
              }),
        ],
      ),
      body: Responsive(
          desktopBody: desktopBody(context), mobileBody: const Placeholder()),
    );
  }

  Widget desktopBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            controller: _controller,
            shrinkWrap: true,
            children: const [
              AboutMeWidget(),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text(
                "My Skills",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 30,
              ),
              SkillsWidget(),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Experience(),
              SizedBox(
                height: 10,
              ),
              AboutCandidateWidget(),
              SizedBox(
                height: 10,
              ),
              MyProjectsWidget(),
              SizedBox(
                height: 10,
              ),
              ContactMeWidget(),
            ],
          ),
        )
      ],
    );
  }
}
