import 'package:flutter/material.dart';

import '../atomic_design_typo.dart';
import '../atomic_system_colors_foundation.dart';

final lightTheme = ThemeData(
  primaryColor: AtomicSystemColorsFoundation.primaryColor,

  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH4,
    ),

    bodyMedium: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH5,
    ),
    
    bodySmall: TextStyle(
      fontFamily: AtomicDesignTypo.familyHeadings,
      fontSize: AtomicDesignTypo.fontSizeH6,
    ),
  ),
);
