import 'package:food_ui_2/controllers/food_detail_controller.dart';
import 'package:get/get.dart';

class FoodDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodDetailController>(() => FoodDetailController());
  }
}
