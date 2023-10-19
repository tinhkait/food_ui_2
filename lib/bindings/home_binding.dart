import 'package:food_ui_2/controllers/home_controller.dart';
import 'package:food_ui_2/controllers/restaurant_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<RestaurantController>(() => RestaurantController());
  }
}
