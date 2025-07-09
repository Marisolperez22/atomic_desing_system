import 'package:flutter/material.dart';
import '../atoms/buttons/primary_button.dart';
import '../atoms/text_fields/search_field.dart';

/// This widget provides a complete search solution with:
/// - A customizable search input field
/// - An adjacent action button
/// - Consistent spacing and layout
///
/// See also:
/// - [SearchField], the text input component used
/// - [PrimaryButton], the action button component used
class CustomSearchBar extends StatelessWidget {
  /// Placeholder text for the search field
  final String hintText;

  /// Text for the action button
  final String buttonText;

  /// Called when the action button is pressed
  final VoidCallback onSearchPressed;

  /// Called when the search text changes
  final ValueChanged<String> onSearchChanged;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.buttonText,
    required this.onSearchChanged,
    required this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchField(hintText: hintText, onChanged: onSearchChanged),
        ),
        const SizedBox(width: 8),
        PrimaryButton(text: buttonText, onPressed: onSearchPressed),
      ],
    );
  }
}
