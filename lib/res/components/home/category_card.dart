import 'package:flutter/material.dart';
import '../../colors/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(16.0),
            margin:
            const EdgeInsets.symmetric(horizontal: 5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8)
            ),
            child: const Icon(Icons.tv,
                size: 50, color: AppColors.primaryColor)),
        const Text('Electronics',
            style: TextStyle(color: AppColors.primaryColor))
      ],
    );
  }
}