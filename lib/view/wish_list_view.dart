import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/components/home/product_card.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wish_list'.tr, style: Theme.of(context).textTheme.titleMedium?.copyWith(letterSpacing:0.6))
      ),
      body: GridView.builder(
        itemCount:9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.80,mainAxisSpacing:10.0),
        itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.all(2.0),
            child: ProductCard(),
          );
        }
      )
    );
  }
}
