import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primary,
      body: Center(
        child: Text(
          'SPLASH',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Pallete.second,
              ),
        ),
      ),
    );
  }
}
