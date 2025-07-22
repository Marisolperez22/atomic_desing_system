import 'package:flutter/material.dart';


class GridviewWidget extends StatelessWidget {
  final int? itemCount;
  final Widget products;
  final double screenWidth;
  final int crossAxisCount;
  final double childAspectRatio;

  const GridviewWidget({
    super.key,
    this.itemCount,
    required this.products,
    required this.screenWidth,
    required this.crossAxisCount,
    required this.childAspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing:
            screenWidth > 1200
                ? 12
                : screenWidth > 600
                ? 10
                : 8,
        mainAxisSpacing:
            screenWidth > 1200
                ? 12
                : screenWidth > 600
                ? 10
                : 8,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return products;
      },
    );
  }
}
