import 'package:flutter/material.dart';

import '../foundations/atomic_system_colors_foundation.dart';

/// This widget provides a modern bottom navigation solution with:
/// - Smooth icon transitions between outlined and filled states
/// - Animated selection indicators
/// - Customizable tap handler
/// - Design-system compliant colors
///
/// See also:
/// - [AnimatedSwitcher], for icon transition effects
/// - [AtomicSystemColorsFoundation], for color system reference
import 'package:flutter/material.dart';

class BarNavigationBottom extends StatefulWidget {
  /// Callback when any navigation item is tapped
  final void Function(int)? onBottomBarTap;

  const BarNavigationBottom({super.key, this.onBottomBarTap});

  @override
  State<BarNavigationBottom> createState() => _BarNavigationBottomState();
}

class _BarNavigationBottomState extends State<BarNavigationBottom> {
  int _currentIndex = 0;

  // Nombres para cada ítem de navegación
  final List<String> _itemTitles = [
    'Inicio',
    'Tienda',
    'Categorías',
    'Perfil',
  ];

  // Rutas correspondientes a cada ítem
  final List<String> _routeNames = [
    '/home',
    '/shop',
    '/categories',
    '/profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Aumenté la altura para acomodar los títulos
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
          _buildNavItem(Icons.person_outline_rounded, Icons.person_rounded, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, IconData activeIcon, int index) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() => _currentIndex = index);
        
        // Navegación a la ruta correspondiente
        Navigator.of(context).pushNamed(_routeNames[index]);
        
        // Opcional: llamar al callback si existe
        if (widget.onBottomBarTap != null) {
          widget.onBottomBarTap!(index);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder:
                (child, animation) => ScaleTransition(scale: animation, child: child),
            child: Icon(
              size: 24,
              isSelected ? activeIcon : icon,
              key: ValueKey<bool>(isSelected),
              color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _itemTitles[index],
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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