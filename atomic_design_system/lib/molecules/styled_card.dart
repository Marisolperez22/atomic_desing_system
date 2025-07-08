import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

class StyledCard extends StatelessWidget {
  final String imageUrl;
  final Color? color;

  const StyledCard({
    super.key,
    required this.imageUrl,
    this.color = AtomicSystemColorsFoundation.cardBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Image.network(imageUrl),
    );
  }
}
