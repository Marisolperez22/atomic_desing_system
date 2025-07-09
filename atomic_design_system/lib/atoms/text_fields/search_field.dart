import 'package:flutter/material.dart';

import '../../foundations/atomic_design_typo.dart';
import '../../foundations/atomic_system_colors_foundation.dart';

/// This component provides a consistent search input field across the application
/// with design-system compliant styling for typography, colors, and shapes.
///
/// See also:
/// - [AtomicDesignTypo], for typography system reference
/// - [AtomicSystemColorsFoundation], for color system reference
class SearchField extends StatelessWidget {
  /// The placeholder text displayed when the field is empty
  final String hintText;

  /// Callback function called when the text changes
  final ValueChanged<String> onChanged;

  /// Optional controller for programmatic control of the field
  final TextEditingController? controller;

  const SearchField({
    super.key,
    this.controller,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(fontSize: AtomicDesignTypo.fontSizeH5),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintStyle: TextStyle(
          fontSize: AtomicDesignTypo.fontSizeH5,
          color: AtomicSystemColorsFoundation.lightText,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20.0,
        ),
      ),
    );
  }
}
