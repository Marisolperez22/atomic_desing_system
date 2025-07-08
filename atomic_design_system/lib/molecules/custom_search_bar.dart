import 'package:flutter/material.dart';
import '../atoms/buttons/primary_button.dart';
import '../atoms/text_fields/search_field.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onSearchChanged;
  final VoidCallback onSearchPressed;
  final String buttonText;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.onSearchChanged,
    required this.onSearchPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchField(
            hintText: hintText,
            onChanged: onSearchChanged,
          ),
        ),
        const SizedBox(width: 8),
        PrimaryButton(
          text: buttonText,
          onPressed: onSearchPressed,
        ),
      ],
    );
  }
}