import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';
import 'package:flutter/material.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AtomicDesignColors.dark,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Atoms'),
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
