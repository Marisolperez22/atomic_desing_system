import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CategoriesFilterChip extends StatelessWidget {
  final String category;
  final bool isSelected;
  final double fontSize;
  final bool isLargeScreen;
  final Function(bool)? onSelected;

  const CategoriesFilterChip({
    super.key,
    required this.category,
    required this.isSelected,
    required this.fontSize,
    required this.isLargeScreen,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: isSelected,
      showCheckmark: false,
      onSelected: onSelected,
      selectedColor: const Color.fromARGB(255, 203, 63, 31),
      backgroundColor: AtomicSystemColorsFoundation.colorButtonPrimary,
      label: Text(
        Utils.formatCategoryName(category),
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.transparent),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isLargeScreen ? 20 : 16,
        vertical: isLargeScreen ? 10 : 8,
      ),
    );
  }
}
