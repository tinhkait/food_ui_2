import 'package:food_ui_2/bindings/home_binding.dart';
import 'package:food_ui_2/controllers/home_navigation_controller.dart';
import 'package:get/instance_manager.dart';

class HomeNavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeNavigationController>(() => HomeNavigationController());
    HomeBinding().dependencies();
  }
}
