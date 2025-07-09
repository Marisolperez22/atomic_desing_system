import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class HomePageSystem extends StatelessWidget {
  const HomePageSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage(svgImageUrl: 'assets/images/molecules.svg');
  }
}
