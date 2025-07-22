import 'package:flutter/material.dart';

import '../atomic_design_system.dart';
import '../molecules/product_card_image.dart';

class CardProduct extends ConsumerWidget {
  final Product product;

  const CardProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap:
          () => context.pushNamed(
            'product_detail',
            pathParameters: {'id': product.id.toString()},
          ),
      child: Stack(
        children: [
          ProductCardImage(
            productImage: product.image ?? '',
            productTitle: product.title ?? '',
            productPrice: '\$${product.price.toString()}',
            productRating: (product.rating?.rate ?? 0).toString(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  ref.read(cartNotifierProvider.notifier).addProduct(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${product.title} añadido al carrito'),
                    ),
                  );
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AtomicSystemColorsFoundation.primaryColor,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
