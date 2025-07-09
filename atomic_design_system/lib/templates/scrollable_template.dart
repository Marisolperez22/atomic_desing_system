import 'package:flutter/material.dart';

/// Template for scrollable content:
/// - Adaptative scroll physics
/// - Consistent padding
/// - Support for refresh

class ScrollableTemplate extends StatelessWidget {
  final List<Widget> children;
  final Future<void> Function()? onRefresh;

  const ScrollableTemplate({
    super.key,
    required this.children,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}