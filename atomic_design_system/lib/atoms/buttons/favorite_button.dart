import 'package:flutter/material.dart';

/// This widget provides a standard favorite/heart icon button that follows
/// Material Design guidelines. It's commonly used to indicate and toggle
/// "favorite" status in applications.

/// See also:
/// - [IconButton], the base widget this component builds upon
/// - [Icons.favorite_border_rounded], the default icon used
class FavoriteButton extends StatelessWidget {
  /// Callback function when the favorite button is pressed.
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
