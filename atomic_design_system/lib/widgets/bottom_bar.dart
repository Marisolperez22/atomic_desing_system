import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final void Function(int)? onTap;

  const BottomBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AtomicSystemColorsFoundation.primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center),
            label: 'Soporte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Catálogo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Salir'),
        ],
        onTap: onTap,
      ),
    );
  }
}
