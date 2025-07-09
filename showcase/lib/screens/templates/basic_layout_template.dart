import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  const BasicLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicLayoutTemplate(
      body: Text('Basic layout template'),
      title: 'Basic layout template',
    );
  }
}
