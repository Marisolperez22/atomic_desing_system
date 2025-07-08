import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final void Function()? favoriteOnPressed;
  
  const FavoriteButton({super.key, required this.favoriteOnPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: favoriteOnPressed,
      icon: Icon(Icons.favorite_border_rounded),
    );
  }
}
