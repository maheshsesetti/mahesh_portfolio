import 'package:flutter/material.dart';

import 'navbar_item.dart';


class NavBarSmall extends StatelessWidget {
  final List<NavBarItem> navBarItems;

  const NavBarSmall({
    Key? key,
    required this.navBarItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return List.generate(
            navBarItems.length,
            (index) => PopupMenuItem(
              child: navBarItems[index],
            ),
          );
        },
        child: const Icon(
          Icons.menu,
        ),
      ),
    );
  }
}
