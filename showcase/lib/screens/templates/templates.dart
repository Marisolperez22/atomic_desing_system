import 'package:flutter/material.dart';
import 'package:atomic_design_system/atomic_design_system.dart';

import '../../config/routes/showcase_routes.dart';

class Templates extends StatelessWidget {
  const Templates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TitleAppbar(title: 'Atomic Design System')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            MainCard(
              buttonTitle: 'Ver más',
              textContent: 'Basic Layout Template',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed:
                  () => Navigator.of(
                    context,
                  ).pushNamed(ShowcaseRoutes.basicLayout),
            ),
            MainCard(
              buttonTitle: 'Ver más',
              textContent: 'Scrollable Template',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed:
                  () => Navigator.of(
                    context,
                  ).pushNamed(ShowcaseRoutes.scrollableTemplate),
            ),
          ],
        ),
      ),
    );
  }
}
