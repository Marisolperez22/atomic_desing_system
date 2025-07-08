import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

class RatingIcon extends StatelessWidget {

  const RatingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rate_rounded,
      color: AtomicSystemColorsFoundation.favoriteColor,
    );
  }
}
