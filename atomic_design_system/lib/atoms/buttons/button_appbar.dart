import 'package:flutter/material.dart';

import '../../foundations/atomic_system_colors_foundation.dart';

/// This widget provides a standardized icon button with outlined style, designed specifically
/// for use in application bars. It implements Material Design 3 specifications and integrates
/// with design system foundations.

/// See also:
/// - [IconButton], the base widget this component builds upon
/// - [AtomicSystemColorsFoundation], the design system foundation this depends on

class ButtonAppbar extends StatelessWidget {
  /// The icon to display inside the button.
  final IconData icon;

  /// The callback that is called when the button is tapped or otherwise activated.
  final void Function()? onPressed;

  /// Creates a design-system compliant app bar button.

  const ButtonAppbar({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: Icon(icon),
      onPressed: onPressed,
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
          const BorderSide(
            width: 1.5,
            color: AtomicSystemColorsFoundation.lightText,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
