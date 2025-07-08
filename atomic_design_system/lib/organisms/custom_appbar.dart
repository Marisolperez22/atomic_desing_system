import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData leftIcon;
  final IconData rightIcon;
  final void Function()? leftIconOnPressed;
  final void Function()? rightIconOnPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.leftIconOnPressed,
    required this.rightIconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonAppbar(icon: leftIcon, onPressed: leftIconOnPressed),
          TitleAppbar(title: title),
          ButtonAppbar(icon: rightIcon, onPressed: rightIconOnPressed),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
