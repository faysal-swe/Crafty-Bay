import 'package:crafty_bay/res/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../res/colors/app_colors.dart';
import '../../res/images/images.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: height * 0.15),
            SvgPicture.asset(
              Images.logoSvg,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text('enter_otp'.tr,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 0.6)),
            const SizedBox(height: 10),
            Text('otp'.tr,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.grey)),
            const SizedBox(height: 20),
            PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  inactiveColor: Colors.grey,
                  selectedFillColor: Colors.white),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              onCompleted: (v) {},
              onChanged: (value) {},
              beforeTextPaste: (text) {
                return true;
              },
              appContext: context,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteNames.signUpScreen);
                },
                child: Text('next'.tr,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(height: 50),
            RichText(
                text: TextSpan(
                    text: 'otp_expire_title'.tr,
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: 'expire_time'.tr,
                      style: const TextStyle(color: AppColors.primaryColor))
                ])),
            const SizedBox(height: 10),
            Text('resend_code'.tr,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold))
          ])),
    ));
  }
}
