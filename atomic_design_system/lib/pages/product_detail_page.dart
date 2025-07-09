import 'package:flutter/material.dart';

import '../atoms/image_card.dart';
import '../templates/basic_template_layout.dart';

/// A screen that displays the detailed view of a selected product.
///
/// This widget shows an image of the product and its name using a custom
/// layout template (`BasicLayoutTemplate`). It disables the bottom navigation bar.
///
/// The [imageUrl] provides the path to the product image,
/// and [productName] displays the product's title.
class ProductDetailPage extends StatelessWidget {
  
  /// URL or asset path of the product image.
  final String imageUrl;

  /// Name or title of the product.
  final String productName;

  const ProductDetailPage({
    super.key,
    required this.imageUrl,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return BasicLayoutTemplate(
      title: 'Detalle',
      showBottomNav: false,
      body: Column(
        children: [
          ImageCard(imageUrl: imageUrl),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
