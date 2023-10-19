// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_ui_2/constants/spacing.dart';
// import 'package:food_ui_2/controllers/base_controller.dart';
// import 'package:food_ui_2/models/food_model.dart';
// import 'package:get/get.dart';

// class DishController extends BaseController {
//   final RxList<FoodModel> _dishFoods = [
//     FoodModel(
//       id: "01",
//       favourite: true,
//       name: "Salmon Salad",
//       rating: 4.5,
//       totalRating: 30,
//       uri: "assets/images/restaurants/noodles.png",
//       description: "Baked salmon fish",
//       price: 5.50,
//     ),
//     FoodModel(
//       id: "02",
//       favourite: true,
//       name: "Salmon Salad",
//       rating: 4.5,
//       totalRating: 30,
//       uri: "assets/images/restaurants/pizza.png",
//       description: "Baked salmon fish",
//       price: 5.50,
//     ),
//     FoodModel(
//       id: "03",
//       favourite: true,
//       name: "Salmon Salad",
//       rating: 4.5,
//       totalRating: 30,
//       uri: "assets/images/restaurants/noodles.png",
//       description: "Baked salmon fish",
//       price: 5.50,
//     ),
//     FoodModel(
//       id: "04",
//       favourite: true,
//       name: "Salmon Salad",
//       rating: 4.5,
//       totalRating: 30,
//       uri: "assets/images/restaurants/mc_donald.png",
//       description: "Baked salmon fish",
//       price: 5.50,
//     ),
//   ].obs;

//   List<FoodModel> get popularFoods => _dishFoods;

//   void doMakeFavouriteRestaurant(String id) {
//     final item = _dishFoods.firstWhere((element) => element.id == id);
//     item.favourite = !item.favourite;
//     _dishFoods.refresh();
//   }

//   void doMakeFavouriteFood(String id) {
//     final item = _dishFoods.firstWhere((element) => element.id == id);
//     item.favourite = !item.favourite;
//     _dishFoods.refresh();
//   }
// }

// Widget _buildPopularFood(BuildContext context) {
//   return Column(
//     children: [
//       Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppSpacing.space24),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               tr("popular_item"),
//               style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w700,
//                 color: AppColors.dark80,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   tr("view_all"),
//                   style: TextStyle(
//                     color: AppColors.orange100,
//                     fontSize: 13.sp,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5.w,
//                 ),
//                 SvgPicture.asset("assets/icons/arrow_right.svg"),
//               ],
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 16.h,
//       ),
//       SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: 252.w,
//         child: ListView.builder(
//           itemCount: _restaurantController.popularFoods.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             final FoodModel item = _restaurantController.popularFoods[index];

//             return Container(
//               clipBehavior: Clip.antiAlias,
//               margin: EdgeInsets.only(
//                 bottom: AppSpacing.space28,
//                 left: index == 0 ? AppSpacing.space24 : 0,
//                 right: index == _restaurantController.restaurants.length - 1
//                     ? AppSpacing.space24
//                     : 16.w,
//               ),
//               decoration: BoxDecoration(
//                 color: AppColors.white100,
//                 boxShadow: AppShadow.buttonWhite,
//                 borderRadius: circularRadius(AppRadius.border16),
//               ),
//               width: 154.w,
//               child: GestureDetector(
//                 onTap: () {
//                   printInfo(info: "tap");
//                   controller.goToFoodDetail(item.id);
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildPopularItemFeatureImage(item),
//                     _buildPopularItemInformation(item),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       )
//     ],
//   );
// }

// Widget _buildPopularItemFeatureImage(FoodModel item) {
//   return Stack(
//     children: [
//       Column(
//         children: [
//           Image.asset(
//             item.uri,
//             width: 154.w,
//             height: 160.w,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 14.w),
//         ],
//       ),
//       Positioned(
//         left: AppSpacing.space12,
//         right: AppSpacing.space12,
//         top: AppSpacing.space12,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.all(AppSpacing.space8),
//               decoration: BoxDecoration(
//                 color: AppColors.white100,
//                 borderRadius: circularRadius(AppRadius.border32),
//               ),
//               child: Row(
//                 children: [
//                   RichText(
//                     text: TextSpan(
//                       text: "\$",
//                       style: TextStyle(
//                         color: AppColors.orange100,
//                         fontSize: 8.sp,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: item.price.toString(),
//                           style: TextStyle(
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w900,
//                             color: AppColors.dark80,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: () => _restaurantController.doMakeFavouriteFood(item.id),
//               child: Container(
//                 width: 28.w,
//                 height: 28.w,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: circularRadius(AppRadius.border32),
//                   color:
//                       item.favourite ? AppColors.orange100 : AppColors.white21,
//                 ),
//                 child: SvgPicture.asset(
//                   "assets/icons/heart_circle.svg",
//                   width: 14.w,
//                   height: 14.w,
//                   color: AppColors.white100,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Positioned(
//         left: AppSpacing.space12,
//         bottom: 0,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: AppSpacing.space8),
//               height: 28.w,
//               alignment: Alignment.centerLeft,
//               decoration: BoxDecoration(
//                 color: AppColors.white100,
//                 borderRadius: circularRadius(AppRadius.border32),
//                 boxShadow: AppShadow.buttonWhite,
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     item.rating.toString(),
//                     style: TextStyle(
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.dark80,
//                     ),
//                   ),
//                   SizedBox(width: 4.w),
//                   SvgPicture.asset(
//                     "assets/icons/star.svg",
//                     width: 10.w,
//                     height: 10.w,
//                   ),
//                   SizedBox(width: 2.w),
//                   Text(
//                     "(${item.totalRating > 25 ? "25+" : item.totalRating})",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontSize: 9.sp,
//                       color: AppColors.gray100,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }

// Widget _buildPopularItemInformation(FoodModel item) {
//   return Expanded(
//     child: Container(
//       padding: EdgeInsets.only(
//         left: AppSpacing.space16,
//         right: AppSpacing.space16,
//         bottom: AppSpacing.space8,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             item.name,
//             style: TextStyle(
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w700,
//               color: AppColors.dark80,
//             ),
//           ),
//           Text(
//             item.description,
//             style: TextStyle(
//               fontSize: 12.sp,
//               fontWeight: FontWeight.w300,
//               color: AppColors.gray100,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
