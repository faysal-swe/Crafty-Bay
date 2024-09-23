import 'package:crafty_bay/res/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../view_models/splash_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashScreenController = Get.put(SplashScreenController());
  @override
  void initState() {
    // TODO: implement initState
    _splashScreenController.showLoginScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(child: SvgPicture.asset(Images.logoSvg)),
            const Spacer(),
            const CircularProgressIndicator(),
            const SizedBox(height:20),
            Text('version'.tr, style:const TextStyle(color: Colors.grey)),
            const SizedBox(height:20)
          ],
        )
    );
  }
}
