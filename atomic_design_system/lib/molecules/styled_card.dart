import 'package:flutter/material.dart';

import '../atoms/buttons/primary_button.dart';

/// A styled card widget with an illustration, title, and a secondary button.
class StyledCard extends StatelessWidget {
  /// Creates a styled card widget with an illustration, title, and a secondary button.

  const StyledCard({
    super.key,

    /// The title displayed on the card.
    required this.title,

    /// The text displayed on the button.
    required this.buttonText,

    /// The callback function triggered when the button is pressed.
    required this.onPressed,

    /// The type of illustration to display.
  });

  final String title;
  final String buttonText;
final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      padding: const EdgeInsets.all(8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8),
            child: Text(title, style: Theme.of(context).textTheme.bodySmall),
          ),
          PrimaryButton(text: buttonText, onPressed: onPressed,),
        ],
      ),
    );
  }
}
