import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'nav_cta_button.dart';
import 'nav_item.dart';

class MobileNavMenu extends StatelessWidget {
  final VoidCallback? onAbout;
  final VoidCallback? onExperience;
  final VoidCallback? onWork;
  final VoidCallback? onContact;
  final VoidCallback? onLetsTalk;

  const MobileNavMenu({
    super.key,
    this.onAbout,
    this.onExperience,
    this.onWork,
    this.onContact,
    this.onLetsTalk,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NavItem(label: 'ABOUT', onTap: onAbout),
          NavItem(label: 'EXPERIENCE', onTap: onExperience),
          NavItem(label: 'WORK', onTap: onWork),
          NavItem(label: 'CONTACT', onTap: onContact),
          const SizedBox(height: 20),
          NavCtaButton(
            text: "LET'S TALK ↗",
            width: double.infinity,
            height: 44,
            onPressed: onLetsTalk,
          ),
        ],
      ),
    );
  }
}
