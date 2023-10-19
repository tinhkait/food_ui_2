import 'package:food_ui_2/controllers/authen_controller.dart';
import 'package:get/get.dart';

class AuthenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenController>(() => AuthenController());
  }
}
