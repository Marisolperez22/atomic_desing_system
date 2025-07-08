import 'package:flutter/material.dart';
import '../../atoms/logo.dart';
import '../../molecules/nav_bar.dart';
import '../../molecules/user_profile.dart';

class AppHeader extends StatelessWidget {
  final String logoPath;
  final List<String> navItems;
  final String userName;
  final String userAvatar;
  final ValueChanged<int> onNavItemSelected;

  const AppHeader({
    super.key,
    required this.logoPath,
    required this.navItems,
    required this.userName,
    required this.userAvatar,
    required this.onNavItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(imagePath: logoPath),
          NavBar(
            items: navItems,
            onItemSelected: onNavItemSelected,
          ),
          UserProfile(
            name: userName,
            avatarPath: userAvatar,
          ),
        ],
      ),
    );
  }
}