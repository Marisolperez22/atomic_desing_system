import 'package:example/screens/home.dart';
import 'package:example/screens/molecules.dart';
import 'package:example/screens/organisms.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design_system/foundations/themes/atomic_system_theme.dart';
import 'config/routes/showcase_routes.dart';
import 'screens/atoms.dart';
import 'screens/home_screen.dart';

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
            return MaterialPageRoute(builder: (context) => const HomeScreen());
             case ShowcaseRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
               case ShowcaseRoutes.molecules:
            return MaterialPageRoute(builder: (context) => const Molecules());
            case ShowcaseRoutes.organisms:
            return MaterialPageRoute(builder: (context) => const Organisms());
        }
      },
    );
  }
}
