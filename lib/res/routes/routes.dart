import 'package:crafty_bay/res/routes/route_names.dart';
import 'package:crafty_bay/view/auth/login_view.dart';
import 'package:crafty_bay/view/home_view.dart';
import 'package:crafty_bay/view/splash_view.dart';
import 'package:get/get.dart';
import '../../view/auth/otp_verification_view.dart';
import '../../view/auth/sign_up_view.dart';
import '../../view/categories_view.dart';
import '../../view/main_bottom_nav_view.dart';
import '../../view/wish_list_view.dart';

class Routes{
  static appRoutes()=>[
    GetPage(name: RouteNames.splashScreen, page:() => const SplashScreen()),
    GetPage(name: RouteNames.loginScreen, page:() => const LoginScreen()),
    GetPage(name: RouteNames.otpVerificationScreen, page:() => const OtpVerificationScreen()),
    GetPage(name: RouteNames.signUpScreen, page:() => const SignUpScreen()),
    GetPage(name: RouteNames.homeScreen, page:() => const HomeScreen()),
    GetPage(name: RouteNames.bottomNavScreen, page:() => const MainBottomNavScreen()),
    GetPage(name: RouteNames.wishListScreen, page:() => const WishListScreen()),
    GetPage(name: RouteNames.categoriesScreen, page:() => const CategoriesScreen()),
  ];
}