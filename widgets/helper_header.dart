import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class HelperHeader extends StatelessWidget {
  const HelperHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          Icon(
            Icons.help_outline,
            size: 60,
            color: AtomicSystemColorsFoundation.colorButtonPrimary,
          ),
          const SizedBox(height: 16),
          Text(
            '¿Cómo podemos ayudarte?',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Estamos aquí para responder tus preguntas',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
