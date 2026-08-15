import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class NavCtaButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const NavCtaButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
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
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
