import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../res/images/images.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Images.logoSvg,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text('complete_profile'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 0.6)),
                  const SizedBox(height: 5),
                  Text('signUp_subtitle'.tr,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.grey)),
                  const SizedBox(height: 30),
                  TextFormField(
                      decoration: InputDecoration(
                    hintText: 'first_name'.tr,
                  )),
                  const SizedBox(height: 10),
                  TextFormField(
                      decoration: InputDecoration(
                    hintText: 'last_name'.tr,
                  )),
                  const SizedBox(height: 10),
                  TextFormField(
                      decoration: InputDecoration(
                    hintText: 'mobile'.tr,
                  )),
                  const SizedBox(height: 10),
                  TextFormField(
                      decoration: InputDecoration(
                    hintText: 'city'.tr,
                  )),
                  const SizedBox(height: 10),
                  TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'shipping_address'.tr,
                      )),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('next'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.6,
                                  color: Colors.white)),
                    ),
                  ),
                ])),
      ),
    ));
  }
}
