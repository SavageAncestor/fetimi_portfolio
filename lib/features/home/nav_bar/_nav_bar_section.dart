import 'package:flutter/material.dart';

import '../../../../core/constants/app_breakpoint.dart';
import 'desktop_nav_bar.dart';
import 'mobile_nav_bar.dart';
import 'tablet_nav_bar.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (width < AppBreakpoints.mobile) {
          return const MobileNavBar();
        }
        if (width < AppBreakpoints.tablet) {
          return const TabletNavBar();
        }
        return const DesktopNavBar();
      },
    );
  }
}
