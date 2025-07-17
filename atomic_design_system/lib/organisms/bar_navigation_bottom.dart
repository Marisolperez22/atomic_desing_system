import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

typedef OnNavItemTap = void Function(int index);

/// This widget provides a modern bottom navigation solution with:
/// - Smooth icon transitions between outlined and filled states
/// - Animated selection indicators
/// - Customizable tap handler
/// - Design-system compliant colors
///
/// See also:
/// - [AnimatedSwitcher], for icon transition effects
/// - [AtomicSystemColorsFoundation], for color system reference
class BarNavigationBottom extends StatefulWidget {
  /// Callback when any navigation item is tapped
  ///
  /// Can be used to trigger additional actions when navigation occurs.
  /// The actual navigation state is managed internally by the widget.
  final OnNavItemTap? onNavItemTap;
  

  const BarNavigationBottom({super.key, required this.onNavItemTap});

  @override
  State<BarNavigationBottom> createState() => _BarNavigationBottomState();
}

class _BarNavigationBottomState extends State<BarNavigationBottom> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AtomicSystemColorsFoundation.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, Icons.home_rounded, 0),
          _buildNavItem(
            Icons.shopping_bag_outlined,
            Icons.shopping_bag_rounded,
            1,
          ),
          _buildNavItem(
            Icons.category_outlined,
            Icons.category_rounded,
            2,
          ),
          _buildNavItem(Icons.logout_rounded, Icons.logout_rounded, 3),
          _buildNavItem(Icons.help_outline_outlined, Icons.help_outline_outlined, 4),

        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, IconData activeIcon, int index) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      child: GestureDetector(
        onTap: () {
      setState(() => _currentIndex = index);
      widget.onNavItemTap?.call(index); 
    },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder:
                  (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
              child: Icon(
                size: 24,
                isSelected ? activeIcon : icon,
                key: ValueKey<bool>(isSelected),
                color: isSelected ? Colors.white : Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSelected ? 8 : 0,
              height: isSelected ? 8 : 0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AtomicSystemColorsFoundation.selectionColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
