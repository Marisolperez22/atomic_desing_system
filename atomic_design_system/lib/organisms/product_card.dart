import 'package:flutter/material.dart';

import '../atoms/buttons/favorite_button.dart';
import '../atoms/image_card.dart';
import '../atoms/rating_icon.dart';
import '../foundations/atomic_design_typo.dart';

class ProductCard extends StatelessWidget {
  final String price;
  final String rating;
  final String imageUrl;
  final String productName;
  final void Function()? favoriteOnPressed;

  const ProductCard({
    super.key,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.productName,
    required this.favoriteOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FavoriteButton(favoriteOnPressed: () {}),
                ImageCard(imageUrl: imageUrl),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              productName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AtomicDesignTypo.fontSizeBodyText,
                  ),
                ),
                Row(
                  children: [
                    RatingIcon(),
                    Text(
                      rating,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AtomicDesignTypo.fontSizeBodyText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
