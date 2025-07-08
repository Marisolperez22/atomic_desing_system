import 'package:flutter/material.dart';

import '../foundations/atomic_design_typo.dart';

class TitleAppbar extends StatelessWidget {
  final String title;

  const TitleAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AtomicDesignTypo.fontSizeH4,
      ),
    );
  }
}
