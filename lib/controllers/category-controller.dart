import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryController extends GetxController {
  RxBool showAllCategories = false.obs;

  void toggleShowAllCategories() {
    showAllCategories.toggle();
  }
}
