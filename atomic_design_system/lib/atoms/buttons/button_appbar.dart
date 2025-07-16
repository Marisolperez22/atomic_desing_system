import 'package:flutter/material.dart';

import '../../foundations/atomic_system_colors_foundation.dart';

class ButtonAppbar extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final Color? backgroundColor; // Nuevo parámetro opcional para el color de fondo

  const ButtonAppbar({
    super.key, 
    required this.icon, 
    required this.onPressed,
    this.backgroundColor, // Hacer el color de fondo configurable
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      // Quitamos .outlined para tener un botón relleno
      icon: Icon(icon),
      onPressed: onPressed,
      style: ButtonStyle(
        // Establecemos el color de fondo
        backgroundColor: WidgetStateProperty.all<Color>(
          backgroundColor ?? Theme.of(context).primaryColor, // Usar color proporcionado o primaryColor por defecto
        ),
        // Hacemos que la forma sea circular
        shape: WidgetStateProperty.all<CircleBorder>(
          const CircleBorder(), // Esto crea un botón completamente circular
        ),
        // Añadimos padding para controlar el tamaño del círculo
        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.all(12)),
        // Color del icono (puedes ajustarlo según necesites)
        iconColor: WidgetStateProperty.all<Color>(Colors.white),
        // Tamaño del icono
        iconSize: WidgetStateProperty.all<double>(24),
      ),
    );
  }
}
