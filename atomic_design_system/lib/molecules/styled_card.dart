import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

/// A styled card component with consistent dimensions and layout properties.
///
/// See also:
/// - [AtomicSystemColorsFoundation.cardBackgroundColor], the default background color
/// - [Image.network], the underlying image widget used
class StyledCard extends StatelessWidget {
  /// The URL of the image to display within the card
  final String imageUrl;

  /// The background color of the card
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
