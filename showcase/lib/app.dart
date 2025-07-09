import 'package:atomic_design_system/pages/home_page.dart';
import 'package:atomic_design_system/pages/product_detail_page.dart';
import 'package:example/screens/molecules.dart';
import 'package:example/screens/organisms.dart';
import 'package:example/screens/pages/pages_system.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design_system/foundations/themes/atomic_system_theme.dart';
import 'config/routes/showcase_routes.dart';
import 'screens/home_screen.dart';
import 'screens/atoms.dart';
import 'screens/pages.dart';
import 'screens/pages/home_page.dart';
import 'screens/pages/product_detail_page.dart';
import 'screens/pages/search.dart';
import 'screens/templates/basic_layout_template.dart';
import 'screens/templates/scrollable_page.dart';
import 'screens/templates/templates.dart';

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
          case ShowcaseRoutes.templates:
            return MaterialPageRoute(builder: (context) => const Templates());
          case ShowcaseRoutes.pages:
            return MaterialPageRoute(builder: (context) => const Pages());
          case ShowcaseRoutes.basicLayout:
            return MaterialPageRoute(builder: (context) => const BasicLayout());
          case ShowcaseRoutes.scrollableTemplate:
            return MaterialPageRoute(
              builder: (context) => const ScrollablePage(),
            );
          case ShowcaseRoutes.pagesSystem:
            return MaterialPageRoute(builder: (context) => const PagesSystem());
          case ShowcaseRoutes.homepage:
            return MaterialPageRoute(
              builder: (context) => const HomePageSystem(),
              
            );
            case ShowcaseRoutes.productDetailRoute:
            return MaterialPageRoute(
              builder: (context) => const ProductDetail(),
              
            );
            case ShowcaseRoutes.search:
            return MaterialPageRoute(
              builder: (context) => const Search(),
              
            );
        }
        return null;
      },
    );
  }
}
