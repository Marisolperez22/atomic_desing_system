import 'package:flutter/material.dart';

import '../atoms/image_card.dart';


class ProductCard extends StatelessWidget {
  final String price;
  final String rating;
  final String imageUrl;
  final String productName;
  final void Function()? favoriteOnPressed;
  final void Function()? addToTheCart;

  const ProductCard({
    super.key,
    required this.addToTheCart,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.productName,
    required this.favoriteOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(8), // Margen uniforme
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 150, // Ancho mínimo
          maxWidth: 200, // Ancho máximo para evitar overflow
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // Para que la columna no ocupe más espacio del necesario
            children: [
              // Encabezado con imagen y botón de favoritos
              Stack(
                children: [
                  ImageCard(
                    imageUrl: imageUrl,
                    height: 120, // Altura fija para la imagen
                  ),
                 
                ],
              ),
              const SizedBox(height: 8),
              // Nombre del producto con límite de líneas
              Text(
                productName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 2, // Máximo 2 líneas
                overflow: TextOverflow.ellipsis, // Puntos suspensivos si el texto es muy largo
              ),
              const SizedBox(height: 8),
              // Fila de precio y rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$$price', // Agregué símbolo de dólar
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Botón de agregar al carrito
              SizedBox(
                width: double.infinity, // Que ocupe todo el ancho
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: addToTheCart,
                  child: const Text(
                    'Agregar',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}