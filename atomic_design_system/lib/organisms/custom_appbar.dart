import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

/// This widget provides a standard app bar implementation with:
/// - Left and right action buttons
/// - Centered title
/// - Consistent styling
/// - Predefined height matching Material Design specs
///
// See also:
/// - [ButtonAppbar], the action button component used
/// - [TitleAppbar], the title component used
/// - [AppBar], the underlying Material widget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The title to display in the center of the app bar
  final dynamic title;

  /// The icon to display on the left side
  final IconData leftIcon;

  final Color appBarColor;

  /// The icon to display on the right side
  final IconData rightIcon;

  /// Callback for left icon press events
  final void Function()? leftIconOnPressed;

  /// Callback for right icon press events
  final void Function()? rightIconOnPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.leftIconOnPressed,
    required this.rightIconOnPressed,
    this.appBarColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonAppbar(icon: leftIcon, onPressed: leftIconOnPressed),
            title is String ? Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),) : title as Widget,
            ButtonAppbar(icon: rightIcon, onPressed: rightIconOnPressed),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
