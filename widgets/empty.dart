import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  const Empty({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: screenWidth > 600 ? 56 : 48,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 16),
          Text(
            'No hay productos en esta categoría',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 20 : 18,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
