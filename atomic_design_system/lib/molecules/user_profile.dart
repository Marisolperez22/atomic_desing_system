import 'package:flutter/material.dart';

/// This widget provides a standardized way to display user profiles with:
/// - Circular avatar image (from network or assets)
/// - User name label
/// - Customizable avatar size
/// - Consistent styling
///
/// See also:
/// - [CircleAvatar], the underlying avatar widget used
/// - [NetworkImage], for loading remote avatars
class UserProfile extends StatelessWidget {
  /// The user's display name
  final String name;

  /// The path to the avatar image
  final String avatarPath;

  /// The diameter of the avatar in logical pixels
  ///
  /// Defaults to 40.0 pixels.
  final double avatarSize;

  const UserProfile({
    super.key,
    required this.name,
    required this.avatarPath,
    this.avatarSize = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: avatarSize / 2,
          backgroundImage: NetworkImage(avatarPath),
        ),
        const SizedBox(height: 8.0),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
