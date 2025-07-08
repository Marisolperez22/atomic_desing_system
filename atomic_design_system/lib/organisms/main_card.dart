import 'package:atomic_design_system/atoms/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../foundations/atomic_system_colors_foundation.dart';

class MainCard extends StatelessWidget {
  final String textContent;
  final String buttonTitle;
  final dynamic Function()? onPressed;
  final String svgImageUrl;

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
          right:50,
          top: 0,
          bottom: 0,
          child: SvgPicture.asset(svgImageUrl, height: 100),
        ),
      ],
    );
  }
}
