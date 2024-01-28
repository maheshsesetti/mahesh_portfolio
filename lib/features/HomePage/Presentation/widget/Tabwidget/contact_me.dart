import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_textfield.dart';

class ContactMeWidget extends StatefulWidget {
  const ContactMeWidget({super.key});

  @override
  State<ContactMeWidget> createState() => _ContactMeWidgetState();
}

class _ContactMeWidgetState extends State<ContactMeWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _helpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.2,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextField(
                  controller: _nameController,
                  hintText: 'Your name',
                  labelText: "",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  labelText: "",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: _websiteController,
                  hintText: 'Your website (If exists)',
                  labelText: "",
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: _helpController,
                  maxLines: 4,
                  hintText: 'How can I help?*',
                  labelText: "",
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {},
                    child: const Text(
                      "Get In Touch",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ))
              ],
            ),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let",
                    style: TextStyle(fontSize: 48),
                  ),
                  Text("Talk", style: TextStyle(fontSize: 48)),
                  Text("for", style: TextStyle(fontSize: 48)),
                ],
              ),
              const Text("Something special", style: TextStyle(fontSize: 48)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "I seek to push the limits of creativity to create high-engaging, user-friendly, and memorable interactive experiences.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: _mailto,
                  child: const Text("Mahesh1995.sesetti@gmail.com",
                      style: TextStyle(fontSize: 28))),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: _callto,
                  child: const Text("+916304274761",
                      style: TextStyle(fontSize: 28))),
            ],
          ))
        ],
      ),
    );
  }

  _mailto() async {
    const url =
        'mailto:mahesh1995.sesetti@gmail.com?subject=Flutter Developer Role&body=';
    print("test url1");
    if (await launchUrl(Uri.parse(url))) {
      print("test url2");
      await launchUrl(Uri.parse(url));
    } else {
      print("test url3");
      throw 'Could not launch $url';
    }
  }

  _callto() async {
    const url = 'tel://6304274761';
    print("test url1");
    if (await launchUrl(Uri.parse(url))) {
      print("test url2");
      await launchUrl(Uri.parse(url));
    } else {
      print("test url3");
      throw 'Could not launch $url';
    }
  }
}
