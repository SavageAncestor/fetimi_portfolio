import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'widgets/hero_primary_button.dart';
import 'widgets/hero_secondary_button.dart';

class TabletHero extends StatelessWidget {
  const TabletHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 650,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/hero/bg.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FLUTTER DEVELOPER',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: AppColors.primaryBright,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'I BUILD',
                          style: Theme.of(context).textTheme.headlineLarge
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        Text(
                          'DIGITAL',
                          style: Theme.of(context).textTheme.headlineLarge
                              ?.copyWith(
                                color: AppColors.primaryBright,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        Text(
                          'EXPERIENCES.',
                          style: Theme.of(context).textTheme.headlineLarge
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w800,
                                height: 0.95,
                              ),
                        ),
                        const SizedBox(height: 22),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 360),
                          child: Text(
                            'I build high-performance mobile applications with Flutter, focusing on clean architecture, reliable functionality, and exceptional user experiences.',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  height: 1.5,
                                ),
                          ),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          children: [
                            HeroPrimaryButton(
                              text: 'VIEW MY WORK →',
                              width: 145,
                              height: 48,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 12),
                            HeroSecondaryButton(
                              text: "LET'S TALK ↗",
                              width: 130,
                              height: 48,
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
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/hero/phone.png',
                      width: 300,
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
