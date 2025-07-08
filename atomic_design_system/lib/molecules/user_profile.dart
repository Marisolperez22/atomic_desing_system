import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String name;
  final String avatarPath;
  final double avatarSize;

  const UserProfile({
    super.key,
    required this.name,
    required this.avatarPath,
    this.avatarSize = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: avatarSize / 2,
          backgroundImage: AssetImage(avatarPath),
        ),
        const SizedBox(width: 8.0),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        
      ],
    );
  }
}