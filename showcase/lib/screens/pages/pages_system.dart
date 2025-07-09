import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:example/config/routes/showcase_routes.dart';
import 'package:flutter/material.dart';

class PagesSystem extends StatelessWidget {
  const PagesSystem({super.key});

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
                Navigator.of(context).pushNamed(ShowcaseRoutes.homepage);
              },
              textContent: 'Home Page',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.productDetailRoute);
              },
              textContent: 'Product detail Page',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.search);
              },
              textContent: 'Search Page',
            ),
           
          ],
        ),
      ),
    );
      
       
  }
}