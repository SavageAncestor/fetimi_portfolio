import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class MobileMenuButton extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onPressed;

  const MobileMenuButton({
    super.key,
    required this.isOpen,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isOpen ? Icons.close : Icons.menu,
        color: AppColors.textPrimary,
      ),
    );
  }
}
