import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../responsive.dart';
import '../mobile_widget/mobile_tab_view/SkillsWidget.dart';
import '../mobile_widget/mobile_tab_view/mobile_about_candidate.dart';
import '../mobile_widget/mobile_tab_view/mobile_about_me.dart';
import '../mobile_widget/mobile_tab_view/mobile_contact_me.dart';
import '../mobile_widget/mobile_tab_view/mobile_experience.dart';
import '../mobile_widget/mobile_tab_view/mobile_my_projects.dart';
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
        title: ListTile(
          leading: Icon(
            Icons.business_center_outlined,
            size: 15.sp,
          ),
          title: Text(
            "Mahesh Portfolio",
            style: TextStyle(fontSize: 10.sp),
          ),
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
                _controller.animateTo(MediaQuery.sizeOf(context).height / 1.5.h,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
              }),
          NavBarItem(
              text: "Project",
              onTap: () {
                _controller.animateTo(MediaQuery.sizeOf(context).height * 1.4.h,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
              }),
          NavBarItem(
              text: "Contact me",
              onTap: () {
                _controller.animateTo(_controller.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut);
              }),
        ],
      ),
      body: Responsive(
          desktopBody: desktopBody(context), mobileBody: mobileBody(context)),
    );
  }

  Widget mobileBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: ListView(
          controller: _controller,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            const AboutMeMobileWidget(),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "My Skills",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            )),
            const MobileskillsWidget(),
            const SizedBox(
              height: 30,
            ),
            const MobileExperience(),
            const MobileAboutCandidateWidget(),
            const MobileMyProjectsWidget(),
            const MobileContactMeWidget()
          ],
        ))
      ],
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
            physics: const ClampingScrollPhysics(),
            children: [
              const AboutMeWidget(),
              const SizedBox(
                height: 100,
              ),
              Center(
                  child: Text(
                "My Skills",
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 30,
              ),
              const SkillsWidget(),
              const SizedBox(
                height: 100,
              ),
              const Experience(),
              const SizedBox(
                height: 10,
              ),
              const AboutCandidateWidget(),
              const SizedBox(
                height: 10,
              ),
              const MyProjectsWidget(),
              const SizedBox(
                height: 10,
              ),
              const ContactMeWidget(),
            ],
          ),
        )
      ],
    );
  }
}
