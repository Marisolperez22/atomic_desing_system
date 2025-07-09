import 'package:flutter/material.dart';

import '../atomic_design_typo.dart';
import '../atomic_system_colors_foundation.dart';

/// This theme provides a consistent light appearance across the application,
/// using the design system's color palette and typography scale.
final lightTheme = ThemeData(
  // Primary color for the application
  primaryColor: AtomicSystemColorsFoundation.primaryColor,

  // Text theme configuration using heading styles
  textTheme: const TextTheme(
    /// Large body text style (H4)
    ///
    /// Used for prominent text elements.
    /// Example: Card titles, section headers
    bodyLarge: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH4,
    ),

    /// Medium body text style (H5)
    ///
    /// Used for standard text content. Typically 20px size.
    /// Example: Paragraphs, list items
    bodyMedium: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH5,
    ),

    /// Small body text style (H6)
    ///
    /// Used for secondary text and captions. Typically 16px size.
    /// Example: Captions, helper text
    bodySmall: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH6,
    ),
  ),
);
