import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;

  const CustomButton({
    super.key,
    this.onPressed,
    required this.textButton,
    this.backgroundColor,
    this.textColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: elevation,
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                textButton,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//"Login"

// padding: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
