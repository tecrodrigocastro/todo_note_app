import 'package:flutter/material.dart';
import 'package:todo_notes_app/constants.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.tooltip,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final String? tooltip;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: tooltip,
      splashRadius: kIconButtonSplashRadius,
      icon: Icon(icon),
    );
  }
}
