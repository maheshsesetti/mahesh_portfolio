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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          NavBarItem(text: "About Me"),
          NavBarItem(text: "Skills"),
          NavBarItem(text: "Project"),
          NavBarItem(text: "Contact me"),
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
            shrinkWrap: true,
            children: const [
              AboutMeWidget(),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text(
                "My Skills",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
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
