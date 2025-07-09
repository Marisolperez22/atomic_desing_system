import 'package:flutter/material.dart';

import '../organisms/main_card.dart';
import '../templates/basic_template_layout.dart';
import '../templates/scrollable_template.dart';


class HomePage extends StatelessWidget {
  final String svgImageUrl;
  const HomePage({super.key, required this.svgImageUrl});

  @override
  Widget build(BuildContext context) {
    return BasicLayoutTemplate(
      title: 'Inicio',
      body: ScrollableTemplate(
        children: [
           MainCard(
            textContent: 'Ofertas especiales',
            buttonTitle: 'Ver todas',
            svgImageUrl: svgImageUrl,
          ),
        ],
      ),
    );
  }
}