import 'package:flutter/material.dart';
import 'package:task_one_2025/constants/class_icons.dart';
import 'package:task_one_2025/screens/widgets/custom_icons.dart';

class CustomWrapIcons extends StatelessWidget {
  const CustomWrapIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 20,
        runSpacing: 20,
        direction: Axis.horizontal,
        children: [
          CustomIcons(
            onTap: () {},
            width: 60,
            height: 60,
            name: ClassIcons.facebook,
          ),
          CustomIcons(
            onTap: () {},
            width: 60,
            height: 60,
            name: ClassIcons.google,
          ),
          CustomIcons(
            onTap: () {},
            width: 60,
            height: 60,
            name: ClassIcons.apple,
          ),
        ],
      ),
    );
  }
}
