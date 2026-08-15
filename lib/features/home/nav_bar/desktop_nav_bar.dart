import 'package:fetimi_portfolio/features/home/nav_bar/widgets/nav_cta_button.dart';
import 'package:fetimi_portfolio/features/home/nav_bar/widgets/nav_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.75),
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Text(
            'FETIMI.',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              NavItem(label: 'ABOUT'),
              NavItem(label: 'EXPERIENCE'),
              NavItem(label: 'WORK'),
              NavItem(label: 'CONTACT'),
            ],
          ),
          const SizedBox(width: 40),
          NavCtaButton(text: "LET'S TALK ↗", width: 140, height: 44),
        ],
      ),
    );
  }
}
