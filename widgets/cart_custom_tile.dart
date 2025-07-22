import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

import 'cart_add_product.dart';
import 'cart_product_image.dart';

class CartCustomTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String totalPrice;
  final String quantity;
  final void Function() onDecrease;
  final void Function() onIncrease;

  const CartCustomTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.totalPrice,
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CartProductImage(imageUrl: imageUrl),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$$price c/u',
            style: TextStyle(color: AtomicSystemColorsFoundation.primaryColor),
          ),
          Text('Total: \$$totalPrice'),
        ],
      ),
      trailing: CartAddProduct(
        onDecrease: onDecrease,
        onIncrease: onIncrease,
        item: quantity,
      ),
    );
  }
}
