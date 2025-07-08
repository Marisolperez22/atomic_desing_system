import 'package:flutter/material.dart';

import '../../foundations/atomic_design_typo.dart';
import '../../foundations/atomic_system_colors_foundation.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
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
        hintStyle: TextStyle(
          color: AtomicSystemColorsFoundation.lightText,
          fontSize: AtomicDesignTypo.fontSizeH5
        ),
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20.0,
        ),
      ),
    );
  }
}
