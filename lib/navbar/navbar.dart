import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulse/controller/controller.dart';
import 'package:pulse/screens/chart_screen.dart';
import 'package:pulse/screens/home_screen.dart';
import 'package:pulse/screens/setting_screen.dart';
import 'package:iconly/iconly.dart';

import '../screens/note_screen.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Home(),
            Note(),
            Chart(),
            Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey.shade300,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTapIndex,
          items: [
            _bottombarItem(IconlyBold.heart, "main"),
            _bottombarItem(IconlyBold.document, "Note"),
            _bottombarItem(IconlyBold.profile, "Chart"),
            _bottombarItem(IconlyBold.setting, "Setting"),
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
