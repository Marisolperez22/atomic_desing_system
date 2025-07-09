import 'package:flutter/material.dart';

import '../organisms/bar_navigation_bottom.dart';
import '../organisms/custom_appbar.dart';

/// Base template for all pages such as:
/// - Custom Appbar
/// - Bottom navigaton system

class BasicLayoutTemplate extends StatelessWidget {
  final Widget body;
  final String title;
  final bool showBottomNav;
  final void Function()? onBottomBarTap;

  const BasicLayoutTemplate({
    super.key,
    required this.body,
    required this.title,
    this.onBottomBarTap,
    this.showBottomNav = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        leftIcon: Icons.arrow_back,
        rightIcon: Icons.search,
        leftIconOnPressed: () => Navigator.pop(context),
        rightIconOnPressed: () => Navigator.pushNamed(context, '/search'),
      ),
      body: SafeArea(child: body),
      bottomNavigationBar:
          showBottomNav
              ? BarNavigationBottom(onBottomBarTap: onBottomBarTap)
              : null,
    );
  }
}
