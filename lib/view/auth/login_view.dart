import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../res/images/images.dart';
import '../../res/routes/route_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width ;
    var height = size.height;

    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.15),
                    SvgPicture.asset(
                      Images.logoSvg,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    Text('welcome_title'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 0.6)),
                    const SizedBox(height: 10),
                    Text('email'.tr,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.grey)),
                    const SizedBox(height: 20),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'email_hintText'.tr,)),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(RouteNames.otpVerificationScreen);
                        },
                        child: Text('next'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing:0.6,
                                    color: Colors.white)),
                      ),
                    ),
                  ])),
        ));
  }
}
