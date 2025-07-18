import 'package:flutter/material.dart';
import 'package:atomic_design_system/atomic_design_system.dart';

class ScreenWidget extends StatelessWidget {
  final Widget body;
  final bool hasBottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final bool hasSingleChilScroll;
  final OnNavItemTap? onNavItemTap;

  const ScreenWidget({
    super.key,
    this.appBar,
    required this.body,
    this.hasSingleChilScroll = true,
    this.hasBottomNavigationBar = false, this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 235, 237, 237),
                  const Color.fromARGB(255, 255, 255, 255),
                ],
              ),
            ),
          ),
          hasSingleChilScroll
          ?
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isLargeScreen ? 48.0 : 24.0,
              vertical: 16,
            ),
            child: body,
          )
          : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isLargeScreen ? 48.0 : 24.0,
              vertical: 16,
            ),
            child: body,
          ),
          hasBottomNavigationBar
              ? Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: BarNavigationBottom(
                  onNavItemTap: onNavItemTap,
                ),
              )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
