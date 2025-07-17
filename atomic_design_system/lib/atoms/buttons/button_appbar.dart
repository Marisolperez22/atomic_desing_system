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
      icon: Icon(icon, color: const Color.fromARGB(255, 255, 255, 255),),
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          AtomicSystemColorsFoundation.primaryColor.withOpacity(0.9),
          
        ),
        side: WidgetStateProperty.all<BorderSide>(
          const BorderSide(
            color: Colors.transparent,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
