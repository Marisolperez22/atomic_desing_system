import 'package:flutter/material.dart';

import '../tokens/atomic_system_colors.dart';

class AtomicSystemColorsFoundation {
  AtomicSystemColorsFoundation._();

  /// The primary color  (refer to [AtomicDesignColors] for details).
  static const Color primaryColor = AtomicDesignColors.dark;

    /// The cards background color  (refer to [AtomicDesignColors] for details).
  static const Color cardBackgroundColor = AtomicDesignColors.light;

  static const Color lightText = AtomicDesignColors.lightGray;


  /// The color to show a selection (refer to [AtomicDesignColors] for details).
  static const Color selectionColor = AtomicDesignColors.selection;

  // Button colors
  /// The primary button color (refer to [AtomicDesignColors] for details).
  static const Color colorButtonPrimary = AtomicDesignColors.secondary;

  /// The color to indicate favorite (refer to [AtomicDesignColors] for details).
  static const Color favoriteColor = AtomicDesignColors.favorite;
  
}