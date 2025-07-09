import 'package:flutter/material.dart';
import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: const Text('Atoms'),
        backgroundColor: AtomicDesignColors.dark,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ScrollableTemplate(
        children: [
          Text('Scrollable Page 1'),
          Text('Scrollable Page 2'),
          Text('Scrollable Page 3'),
        ],
      ),
    );
  }
}
