import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String categories;
  const CategoryTitle({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth > 600 ? 24.0 : 16.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
         categories,
          style: TextStyle(
            fontSize: screenWidth > 600 ? 24 : 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}