import 'package:flutter/material.dart';

import '../../foundations/atomic_system_colors_foundation.dart';

class ButtonAppbar extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const ButtonAppbar({super.key, required this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
     style: ButtonStyle(
    side: WidgetStateProperty.all<BorderSide>(
      const BorderSide(
        color: AtomicSystemColorsFoundation.lightText,
        width: 1.5,       
      ),
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), 
      ),
    ),),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
