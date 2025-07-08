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
