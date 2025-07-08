import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final List<String> items;
  final ValueChanged<int> onItemSelected;
  final int selectedIndex;

  const NavBar({
    super.key,
    required this.items,
    required this.onItemSelected,
    this.selectedIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: InkWell(
            onTap: () => onItemSelected(index),
            child: Text(
              items[index],
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: selectedIndex == index 
                  ? FontWeight.bold 
                  : FontWeight.normal,
                color: selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }
}