import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../atoms/buttons/primary_button.dart';
import '../foundations/atomic_system_colors_foundation.dart';

/// This widget provides a visually striking card that combines:
/// - Primary content text
/// - Action button
/// - Decorative SVG image
/// - Design-system compliant styling
///
/// See also:
/// - [PrimaryButton], the action button component used
/// - [AtomicSystemColorsFoundation], for color system reference
/// - [SvgPicture], for SVG image rendering
class MainCard extends StatelessWidget {
  /// The main text content displayed in the card
  final String textContent;

  /// The text displayed on the action button
  final String buttonTitle;

  /// The path to the SVG image asset
  final String svgImageUrl;

  /// Callback when the action button is pressed
  final dynamic Function()? onPressed;

  const MainCard({
    super.key,
    this.onPressed,
    required this.textContent,
    required this.buttonTitle,
    required this.svgImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: AtomicSystemColorsFoundation.primaryColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      textContent,
                      style: TextStyle(
                        color: AtomicSystemColorsFoundation.lightText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    PrimaryButton(text: buttonTitle, onPressed: onPressed),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 50,
          child: SvgPicture.asset(svgImageUrl, height: 100),
        ),
      ],
    );
  }
}
