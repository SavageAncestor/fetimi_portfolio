import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HeroSecondaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const HeroSecondaryButton({
    super.key,
    required this.text,
    this.width = 140,
    this.height = 52,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryBright,
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: AppColors.primaryBright,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
