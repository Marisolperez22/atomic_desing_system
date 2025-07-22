import 'package:flutter/material.dart';

class ErrorIcon extends StatelessWidget {
  final String error;

  const ErrorIcon({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red,
            size: screenWidth > 600 ? 56 : 48,
          ),
          const SizedBox(height: 16),
          Text(
            'Error al cargar productos',
            style: TextStyle(fontSize: screenWidth > 600 ? 20 : 18),
          ),
          Text(error, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
