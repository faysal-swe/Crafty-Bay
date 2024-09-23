import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../colors/app_colors.dart';

class SubSections extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const SubSections({super.key, required this.title, required this.onTap});

  @override
  State<SubSections> createState() => _SubSectionsState();
}

class _SubSectionsState extends State<SubSections> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 20)),
        const Spacer(),
        TextButton(
          onPressed:widget.onTap,
          child: Text('home_title_5'.tr,
              style: const TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
