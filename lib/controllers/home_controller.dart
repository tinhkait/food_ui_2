import 'package:food_ui_2/controllers/base_controller.dart';
import 'package:food_ui_2/models/category_model.dart';
import 'package:food_ui_2/routes/links.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class HomeController extends BaseController {
  final List<CategoryModel> _categories = [
    CategoryModel(
      id: "01",
      name: "Rice",
      uri: "assets/images/categories/rice-bowl-54.png",
    ),
    CategoryModel(
      id: "02",
      name: "Pizza",
      uri: "assets/images/categories/salami-pizza-54.png",
    ),
    CategoryModel(
      id: "03",
      name: "Noodles",
      uri: "assets/images/categories/noodles-54.png",
    ),
    CategoryModel(
      id: "04",
      name: "Hamburger",
      uri: "assets/images/categories/hamburger-54.png",
    ),
    CategoryModel(
      id: "05",
      name: "Hot Dog",
      uri: "assets/images/categories/hot-dog-54.png",
    ),
    CategoryModel(
      id: "06",
      name: "Drinks",
      uri: "assets/images/categories/cola-54.png",
    ),
    CategoryModel(
      id: "07",
      name: "Meat",
      uri: "assets/images/categories/steak-54.png",
    ),
    CategoryModel(
      id: "08",
      name: "Seafood",
      uri: "assets/images/categories/crab-54.png",
    ),
    CategoryModel(
      id: "09",
      name: "Desserts",
      uri: "assets/images/categories/cherry-cheesecake-54.png",
    ),
    CategoryModel(
      id: "10",
      name: "Juice",
      uri: "assets/images/categories/orange-juice-54.png",
    ),
    CategoryModel(
      id: "11",
      name: "Bubble Tea",
      uri: "assets/images/categories/bubble-tea-54.png",
    ),
    CategoryModel(
      id: "12",
      name: "Milk Tea",
      uri: "assets/images/categories/hemp-milk-54.png",
    ),
    CategoryModel(
      id: "13",
      name: "Sandwich",
      uri: "assets/images/categories/sandwich-54.png",
    ),
    CategoryModel(
      id: "14",
      name: "Bread",
      uri: "assets/images/categories/pastry-54.png",
    ),
    CategoryModel(
      id: "15",
      name: "Other",
      uri: "assets/images/categories/other-54.png",
    ),
  ];

  final RxString _currentCategoryId = ''.obs;

  String get currentCategoryId => _currentCategoryId.value;
  List<CategoryModel> get categories => _categories;

  final RxBool showAllCategories = false.obs;

  void toggleShowAllCategories() async {
    updateLoading(true);
    showAllCategories.toggle();

    await Future.delayed(
        const Duration(milliseconds: 500)); // Wait for 3 seconds

    updateLoading(false);
  }

  void onSelectCategory(String id) async {
    updateLoading(true);
    _currentCategoryId(id);
    await Future.delayed(const Duration(milliseconds: 500));
    updateLoading(false);
  }

  void goToFoodDetail(String id) {
    Get.toNamed(AppLinks.FOOD_DETAIL);
  }

  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 1));
    _currentCategoryId(_categories.first.id);
    updateLoading(false);
    super.onInit();
  }
}
