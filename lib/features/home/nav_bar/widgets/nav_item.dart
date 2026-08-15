import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class NavItem extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const NavItem({
    super.key,
    required this.label,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: AppColors.textSecondary,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
