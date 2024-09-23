import 'package:crafty_bay/res/colors/app_colors.dart';
import 'package:crafty_bay/res/getx_localization/languages.dart';
import 'package:crafty_bay/res/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Crafty Bay',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: Routes.appRoutes(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: MaterialColor(
                  AppColors.primaryColor.value, AppColors().color)),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor))),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))))),
    );
  }
}
