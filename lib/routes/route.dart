import 'package:get/get.dart';
import 'package:pulse/navbar/navbar.dart';

import '../screens/chart_screen.dart';
import '../screens/home_screen.dart';
import '../screens/note_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/splash_screen.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(
      name: "/",
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: "/navbar",
      page: () => NavBar(),
    ),
    GetPage(
      name: "/home",
      page: () => const Home(),
    ),
    GetPage(
      name: "/note",
      page: () => const Note(),
    ),
    GetPage(
      name: "/chart",
      page: () => const Chart(),
    ),
    GetPage(
      name: "/setting",
      page: () => const Setting(),
      transition: Transition.cupertino,
    ),
  ];
}
