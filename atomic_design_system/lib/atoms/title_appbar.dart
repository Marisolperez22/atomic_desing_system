import 'package:flutter/material.dart';

import '../foundations/atomic_design_typo.dart';

/// This widget provides a consistent title style for application bars,
/// using the design system's typographic scale and font weights.
/// See also:
/// - [AtomicDesignTypo], for typography system reference
/// - [AppBar], the typical parent widget for this component
class TitleAppbar extends StatelessWidget {
  /// The text to display as title
  final String title;

  const TitleAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: AtomicDesignTypo.fontSizeH4,
      ),
    );
  }
}
