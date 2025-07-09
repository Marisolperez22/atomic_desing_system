import 'package:flutter/material.dart';

import '../../foundations/atomic_design_typo.dart';
import '../../foundations/atomic_system_colors_foundation.dart';

/// This button represents the primary call-to-action in your application's UI.
/// It features a prominent style with rounded corners and follows the design
/// system's color and typography guidelines.

/// See also:
/// - [AtomicSystemColorsFoundation], for color system reference
/// - [AtomicDesignTypo], for typography system reference
class PrimaryButton extends StatelessWidget {
  /// The button's display text
  final String text;

  /// Whether the button should be in disabled state
  final bool isDisabled;

  /// Callback when the button is pressed
  final Function()? onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AtomicSystemColorsFoundation.colorButtonPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: AtomicDesignTypo.fontSizeH6,
          fontFamily: AtomicDesignTypo.familyHeadings,
        ),
      ),
    );
  }
}
