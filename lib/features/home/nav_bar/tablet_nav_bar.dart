import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'widgets/nav_cta_button.dart';
import 'widgets/nav_item.dart';

class TabletNavBar extends StatelessWidget {
  const TabletNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
              fontSize: 19,
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
          const SizedBox(width: 24),
          const NavCtaButton(text: "LET'S TALK ↗", width: 135, height: 40),
        ],
      ),
    );
  }
}
