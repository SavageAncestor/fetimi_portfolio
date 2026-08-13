import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const FetimiPortfolio());
}

class FetimiPortfolio extends StatelessWidget {
  const FetimiPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetimi Timilayemi',
      theme: AppTheme.dark,
      home: const Scaffold(body: Center(child: Text('Fetimi Portfolio'))),
    );
  }
}
