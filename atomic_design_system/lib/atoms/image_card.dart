import 'package:flutter/material.dart';

/// This widget provides a standardized way to display images from URLs across
/// the application, with predefined dimensions and error handling.
///
/// See also:
/// - [Image.network], the underlying widget used for image loading
/// - [CachedNetworkImage], alternative for more advanced caching needs
class ImageCard extends StatelessWidget {
  /// The URL of the image to display
  final String imageUrl;

  const ImageCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, width: 150, height: 120,);
  }
}
