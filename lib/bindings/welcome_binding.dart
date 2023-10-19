import 'package:food_ui_2/controllers/authen_controller.dart';
import 'package:food_ui_2/controllers/welcome_controller.dart';
import 'package:get/get.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
