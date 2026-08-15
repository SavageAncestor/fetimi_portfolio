import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HeroPrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const HeroPrimaryButton({
    super.key,
    required this.text,
    this.width = 160,
    this.height = 52,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontSize: 12,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
