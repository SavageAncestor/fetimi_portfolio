import 'package:fetimi_portfolio/features/home/hero/widgets/hero_primary_button.dart';
import 'package:fetimi_portfolio/features/home/hero/widgets/hero_secondary_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class DesktopHero extends StatelessWidget {
  const DesktopHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 720,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/hero/bg.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FLUTTER DEVELOPER',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: AppColors.primaryBright,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          'I BUILD',
                          style: Theme.of(context).textTheme.displayLarge
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        Text(
                          'DIGITAL',
                          style: Theme.of(context).textTheme.displayLarge
                              ?.copyWith(
                                color: AppColors.primaryBright,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        Text(
                          'EXPERIENCES.',
                          style: Theme.of(context).textTheme.displayLarge
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        const SizedBox(height: 28),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 520),
                          child: Text(
                            'I build high-performance mobile applications with Flutter, focusing on clean architecture, reliable functionality, and exceptional user experiences..',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  height: 1.6,
                                ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            HeroPrimaryButton(
                              text: 'VIEW MY WORK →',
                              onPressed: () {},
                            ),
                            const SizedBox(width: 16),
                            HeroSecondaryButton(
                              text: "LET'S TALK ↗",
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Image.asset(
                      'assets/images/hero/phone.png',
                      width: 380,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
