import 'package:flutter/material.dart';

import '../../../../core/constants/app_breakpoint.dart';
import 'deskstop_hero.dart';
import 'mobile_hero.dart';
import 'tablet_hero.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        if (width < AppBreakpoints.mobile) {
          return const MobileHero();
        }

        if (width < AppBreakpoints.tablet) {
          return const TabletHero();
        }

        return const DesktopHero();
      },
    );
  }
}
