import 'package:flutter/material.dart';
import '../../colors/app_colors.dart';
import '../../images/images.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 150,
      child: Card(
          child: Column(
        children: [
          Container(
              height: 80,
              decoration: BoxDecoration(
                  image:
                      const DecorationImage(image: AssetImage(Images.shoesPng)),
                  color: AppColors.primaryColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11)))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('New Year Special Shoe 30',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.blueGrey,
                        overflow: TextOverflow.ellipsis)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('\$100',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600)),
                    const Wrap(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Text('4.0', style: TextStyle(color: Colors.blueGrey))
                      ],
                    ),
                    Card(
                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.favorite_border,
                              color: Colors.white, size: 12),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
