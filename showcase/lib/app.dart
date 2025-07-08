import 'package:flutter/material.dart';

import 'package:atomic_design_system/foundations/themes/atomic_system_theme.dart';
import 'config/routes/showcase_routes.dart';
import 'screens/atoms.dart';
import 'screens/home.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ShowcaseRoutes.home:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case ShowcaseRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}