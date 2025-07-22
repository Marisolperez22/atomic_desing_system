import 'package:flutter/material.dart';
import 'package:atomic_design_system/atomic_design_system.dart';

import '../atoms/text/text_title.dart';
import 'rating_widget.dart';

class ProductDetailCard extends StatelessWidget {
  final String productImage;
  final String productTitle;
  final double productPrice;
  final String productDescription;
  final double productRating;
  final dynamic Function()? onAddToCart;

  const ProductDetailCard({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
    required this.productDescription,
    required this.productRating,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del producto
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  productImage,
                  height: 300,
                  errorBuilder:
                      (_, __, ___) => const Icon(Icons.image, size: 100),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Título y precio
            TextTitle(title: productTitle),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ $productPrice'),
                RatingWidget(rate: productRating.toString()),
              ],
            ),
            const SizedBox(height: 10),

            // Descripción
            TextTitle(title: 'Descripción'),
            const SizedBox(height: 10),

            Text(productDescription, textAlign: TextAlign.justify),
            const SizedBox(height: 20),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                text: 'Agregar al carrito',
                onPressed: onAddToCart,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
