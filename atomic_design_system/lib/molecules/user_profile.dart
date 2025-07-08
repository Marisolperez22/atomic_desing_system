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
    return Column(
      children: [
        CircleAvatar(
          radius: avatarSize / 2,
          backgroundImage:NetworkImage(avatarPath),
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