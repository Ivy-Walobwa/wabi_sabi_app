import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    final Path path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width/4, height-40, width/2, height-20);
    path.quadraticBezierTo(3/4 * width, height, width, height-20);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}