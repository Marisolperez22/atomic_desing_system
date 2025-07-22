import 'package:flutter/material.dart';

class CartProductImage extends StatelessWidget {
  final String imageUrl;

  const CartProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                    width: 50,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/placeholder.png',
                        image: imageUrl,
                        fit: BoxFit.contain,
                        imageErrorBuilder:
                            (context, error, stackTrace) => Icon(Icons.error),
                      ),
                    ),
                  );
  }
}