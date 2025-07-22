import 'package:flutter/material.dart';

class NoResults extends StatelessWidget {
  final String query;
  const NoResults({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: screenWidth > 600 ? 80 : 60,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 20),
          Text(
            'No encontramos resultados para:',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 20 : 16,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '"$query"',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 18 : 16,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Intenta con otros términos de búsqueda',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 16 : 14,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
