import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final Color backgroundColor;
  final Color primaryColor;

  const CustomTextButton({
    required this.child,
    required this.onPressed,
    required this.primaryColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          primary: primaryColor,
          padding: const EdgeInsets.all(16),
        ),
        onPressed: onPressed,
        child: child);
  }
}
