import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'widgets/hero_primary_button.dart';
import 'widgets/hero_secondary_button.dart';

class MobileHero extends StatelessWidget {
  const MobileHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/hero/mobile_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Text(
                  'FLUTTER DEVELOPER',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColors.primaryBright,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'I BUILD',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                    height: 0.95,
                  ),
                ),
                Text(
                  'DIGITAL',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.primaryBright,
                    fontWeight: FontWeight.w800,
                    height: 0.95,
                  ),
                ),
                Text(
                  'EXPERIENCES.',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                    height: 0.95,
                  ),
                ),
                const SizedBox(height: 22),
                Text(
                  'I build high-performance mobile applications with Flutter, focusing on clean architecture, reliable functionality, and exceptional user experiences.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 26),
                Row(
                  children: [
                    Expanded(
                      child: HeroPrimaryButton(
                        text: 'VIEW MY WORK →',
                        height: 48,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: HeroSecondaryButton(
                        text: "LET'S TALK ↗",
                        height: 48,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'assets/images/hero/phone.png',
                    width: 280,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
