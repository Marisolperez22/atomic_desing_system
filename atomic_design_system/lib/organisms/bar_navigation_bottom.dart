import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

class BarNavigationBottom extends StatefulWidget {
  final void Function()? onBottomBarTap;

  const BarNavigationBottom({super.key, required this.onBottomBarTap});

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
          _buildNavItem(Icons.shopping_bag_outlined, Icons.shopping_bag_rounded, 1),
          _buildNavItem(Icons.notifications_none_rounded, Icons.notifications_rounded, 2),
          _buildNavItem(Icons.person_outline_rounded, Icons.person_rounded, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, IconData activeIcon, int index) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
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
    );
  }
}
