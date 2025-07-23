import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final double width;
  final double height;
  final String name;
  final void Function()? onTap;
  const CustomIcons({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Image.asset(name),
      ),
    );
  }
}
