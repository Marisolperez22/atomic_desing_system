import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

import '../../config/routes/showcase_routes.dart';

class Templates extends StatelessWidget {
  const Templates({super.key});

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
                Navigator.of(context).pushNamed(ShowcaseRoutes.basicLayout);
              },
              textContent: 'Basic Layout Template',
            ),
            MainCard(
              buttonTitle: 'Saber más',
              svgImageUrl: 'assets/images/atom.svg',
              onPressed: () {
                Navigator.of(context).pushNamed(ShowcaseRoutes.scrollableTemplate);
              },
              textContent: 'Scrollable Template',
            ),
           
          ],
        ),
      ),
    );
      
       
  }
}

