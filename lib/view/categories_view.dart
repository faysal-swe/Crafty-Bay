import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/components/home/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('categories'.tr, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, letterSpacing:0.6))
        ),
        body: SafeArea(
          child: GridView.builder(
              itemCount: 16,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 0.80,mainAxisSpacing:10.0),
              itemBuilder: (context, index){
                return const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: CategoryCard(),
                );
              }
          ),
        )
    );
  }
}
