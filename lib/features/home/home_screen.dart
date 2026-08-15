import 'package:flutter/material.dart';

import 'hero/_hero_section.dart';
import 'nav_bar/_nav_bar_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [NavBarSection(), HeroSection()]),
      ),
    );
  }
}
