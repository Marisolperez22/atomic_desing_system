import 'package:flutter/material.dart';

import '../../foundations/atomic_design_typo.dart';
import '../../foundations/atomic_system_colors_foundation.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final bool isDisabled;
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: AtomicSystemColorsFoundation.colorButtonPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: AtomicDesignTypo.fontSizeBodyText,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: AtomicDesignTypo.familyHeadings,
        ),
      ),
    );
  }
}
