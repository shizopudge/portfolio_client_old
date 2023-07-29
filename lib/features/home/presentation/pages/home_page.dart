import 'package:flutter/material.dart';

import '../../../../core/services/adaptative.dart';
import '../widgets/home_web.dart';

class HomePage extends StatefulWidget {
  static const String homePageName = 'home';
  static const String homePagePath = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Center(
        child: SizedBox(
          height: Adaptive.screenHeight! * .2,
          width: Adaptive.screenWidth! * .3,
          child: FittedBox(
            child: Center(
              child: Text(
                'MOBILE',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ),
      ),
      tablet: Center(
        child: SizedBox(
          height: Adaptive.screenHeight! * .2,
          width: Adaptive.screenWidth! * .3,
          child: FittedBox(
            child: Center(
              child: Text(
                'TABLET',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ),
      ),
      desktop: const HomeWeb(),
    );
  }
}
