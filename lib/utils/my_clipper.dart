import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.47);
    path.cubicTo(
      0,
      size.height * 0.68,
      0,
      size.height * 0.85,
      0,
      size.height * 0.85,
    );
    path.cubicTo(
      0,
      size.height * 0.85,
      size.width * 0.05,
      size.height * 0.86,
      size.width * 0.1,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width * 0.2,
      size.height * 0.87,
      size.width * 0.4,
      size.height * 0.93,
      size.width * 0.5,
      size.height * 0.93,
    );
    path.cubicTo(
      size.width * 0.6,
      size.height * 0.93,
      size.width * 0.8,
      size.height * 0.87,
      size.width * 0.9,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width * 0.95,
      size.height * 0.86,
      size.width,
      size.height * 0.85,
      size.width,
      size.height * 0.85,
    );
    path.cubicTo(
      size.width,
      size.height * 0.85,
      size.width,
      size.height * 0.68,
      size.width,
      size.height * 0.47,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
