import 'package:flutter/material.dart';

import 'navbar_item.dart';

class NavBarWide extends StatelessWidget {
  final List<NavBarItem> navBarItems;

  const NavBarWide({
    Key? key,
    required this.navBarItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      width: sw / 2,
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: navBarItems.length,
              itemBuilder: (context, index) {
                return navBarItems[index];
              },
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder()),
              onPressed: () {},
              child: const Row(
                children: [
                  Text("Resume"),
                  Icon(
                    Icons.download_sharp,
                    size: 20,
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
