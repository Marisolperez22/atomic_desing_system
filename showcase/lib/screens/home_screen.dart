import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:example/config/routes/showcase_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppbar(title: 'Atomic Design System',)
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.atoms);
              },
              textContent: 'Atoms',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/molecules.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.molecules);
              },
              textContent: 'Molecules',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/space.svg',
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(ShowcaseRoutes.organisms);
              },
              textContent: 'Organisms',
            ),
             MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/product.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.templates);
              },
              textContent: 'Templates',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/page.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.pagesSystem);
              },
              textContent: 'Pages',
            ),
          ],
        ),
      ),
    );
  }
}
