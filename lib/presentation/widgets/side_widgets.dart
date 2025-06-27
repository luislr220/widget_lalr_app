import 'package:flutter/material.dart';
import 'package:widget_lalr_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex;
        });
      },
      children: [
        ...appMenuItems.map(
          (element) => NavigationDrawerDestination(
            icon: Icon(element.icon),
            label: Text(element.title),
          ),
        ),
      ],
    );
  }
}
