import 'package:flutter/material.dart';

import 'utils/constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const Responsive({super.key,required this.desktopBody,required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if (constraints.maxWidth < Constants.mobileDeviceWidth) {
            return mobileBody;
          } else {
            return desktopBody;
          }
    });
  }
}
