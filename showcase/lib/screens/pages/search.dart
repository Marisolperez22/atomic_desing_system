import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchPage(
      onSearchChanged: (value) => debugPrint(value),
      onSearchPressed: () => debugPrint('Button pressed'),
    );
  }
}
