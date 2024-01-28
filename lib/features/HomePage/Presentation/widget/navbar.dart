import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'navbar_item.dart';
import 'navbar_small.dart';
import 'navbar_wide.dart';

class AdaptiveNavBar extends AppBar {

  final bool canTitleGetTapped;

  final void Function()? onTitleTapped;

  final double? screenWidth;

  final List<NavBarItem> navBarItems;


  AdaptiveNavBar({
    this.canTitleGetTapped = false,
    this.onTitleTapped,
    required this.screenWidth,
    required this.navBarItems,
    Key? key,
    Widget? title,
    Widget? leading,
    bool automaticallyImplyLeading = true,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    Color? shadowColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
  }) : super(
          key: key,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: canTitleGetTapped
                ? InkWell(
                    onTap: onTitleTapped,
                    child: title ??
                        const Text(
                          "MB NavBar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                  )
                : title ??
                    const Text(
                      "MB NavBar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
          ),
          actions: [
            screenWidth! < 800.toDouble()
                ? NavBarSmall(
                    navBarItems: navBarItems,
                  )
                : NavBarWide(
                    navBarItems: navBarItems,
                  ),
          ],
          leading: leading,
          automaticallyImplyLeading: automaticallyImplyLeading,
          flexibleSpace: flexibleSpace,
          bottom: bottom,
          elevation: elevation,
          shadowColor: shadowColor,
          shape: shape,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          iconTheme: iconTheme,
          actionsIconTheme: actionsIconTheme,
          primary: primary,
          centerTitle: centerTitle,
          excludeHeaderSemantics: excludeHeaderSemantics,
          titleSpacing: titleSpacing,
          toolbarOpacity: toolbarOpacity,
          bottomOpacity: bottomOpacity,
          toolbarHeight: toolbarHeight,
          leadingWidth: leadingWidth,
          toolbarTextStyle: toolbarTextStyle,
          titleTextStyle: titleTextStyle,
          systemOverlayStyle: systemOverlayStyle,
        );
}
