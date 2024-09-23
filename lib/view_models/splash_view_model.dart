import 'dart:async';
import 'package:crafty_bay/res/routes/route_names.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void showLoginScreen() {
    Timer(const Duration(seconds: 3),()=> Get.offAllNamed(RouteNames.bottomNavScreen));
  }
}
