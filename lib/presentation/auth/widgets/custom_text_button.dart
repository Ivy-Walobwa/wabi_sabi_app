import 'package:flutter/material.dart';
import '../../core/constants.dart';

class CustomTextButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;

  const CustomTextButton({
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: klightPinkColor,
          primary: kpurpleColor,
          padding: const EdgeInsets.all(16),
        ),
        onPressed: onPressed,
        child: child);
  }
}
