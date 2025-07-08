import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const Logo({
    super.key,
    required this.imagePath,
    this.height = 40.0,
    this.width = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}