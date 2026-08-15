import 'package:fetimi_portfolio/features/home/nav_bar/widgets/mobile_nav_bar_menu.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'widgets/mobile_menu_button.dart';

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({super.key});

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 64,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.surface.withValues(alpha: 0.75),
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Text(
                'FETIMI.',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              MobileMenuButton(
                isOpen: _isMenuOpen,
                onPressed: () {
                  setState(() {
                    _isMenuOpen = !_isMenuOpen;
                  });
                },
              ),
            ],
          ),
        ),
        if (_isMenuOpen) const MobileNavMenu(),
      ],
    );
  }
}
