import 'package:crafty_bay/view/wish_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/colors/app_colors.dart';
import '../view_models/bottom_nav_view_model.dart';
import 'categories_view.dart';
import 'home_view.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});
  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final bottomNavController = Get.put(BottomNavViewModel());
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const HomeScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>_screens[bottomNavController.getIndex]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: bottomNavController.getIndex,
              onTap: (int index) {
                bottomNavController.setIndex = index;
              },
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.home_filled), label: 'home'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.dashboard), label: 'categories'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.shopping_cart_rounded),
                    label: 'cart'.tr),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.favorite_border), label: 'wish'.tr),
              ])),
    );
  }
}
