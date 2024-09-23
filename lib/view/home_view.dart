import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../res/components/home/category_card.dart';
import '../res/components/home/circular_icon_button.dart';
import '../res/components/home/home_slider.dart';
import '../res/components/home/product_card.dart';
import '../res/components/home/search_box.dart';
import '../res/components/home/sub_sections.dart';
import '../res/images/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SvgPicture.asset(Images.logoNavSvg, height: 30),
          actions: [
            CircularIconButton(
              onTap: () {},
              icon: Icons.person_outline,
            ),
            const SizedBox(width: 8.0),
            CircularIconButton(
              onTap: () {},
              icon: Icons.phone_outlined,
            ),
            const SizedBox(width: 8.0),
            CircularIconButton(
              onTap: () {},
              icon: Icons.notifications_active_outlined,
            ),
            const SizedBox(width: 8.0),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                const SearchBox(),
                const SizedBox(height: 10.0),
                const HomeSlider(),
                const SizedBox(height: 20.0),
                SubSections(title: 'home_title_1'.tr, onTap: () {}),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const CategoryCard();
                      }),
                ),
                const SizedBox(height: 10.0),
                SubSections(title: 'home_title_2'.tr, onTap: () {}),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductCard();
                      }),
                ),
                const SizedBox(height: 10.0),
                SubSections(title: 'home_title_3'.tr, onTap: () {}),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductCard();
                      }),
                ),
                const SizedBox(height: 10.0),
                SubSections(title: 'home_title_4'.tr, onTap: () {}),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductCard();
                      }),
                ),
              ]),
            ),
          ),
        ));
  }
}
