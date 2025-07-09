import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

/// This widget provides a consistent star icon for rating systems, using
/// the design system's specified color for favorites/ratings.
///
/// See also:
/// - [Icons.star_rate_rounded], the base icon used
/// - [AtomicSystemColorsFoundation], for color system reference
class RatingIcon extends StatelessWidget {
  /// Creates a design-system compliant rating star icon
  const RatingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rate_rounded,
      color: AtomicSystemColorsFoundation.favoriteColor,
    );
  }
}
