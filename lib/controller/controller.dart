import 'package:get/get_state_manager/get_state_manager.dart';

class NavBarController extends GetxController {
  var tabIndex = 0;
  void changeTapIndex(int index) {
    tabIndex = index;
    update();
  }
}
