import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/common/access_listener.dart';
import '../../../../core/services/adaptative.dart';
import '../widgets/home_web.dart';

class HomePage extends StatefulWidget {
  static const String path = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController =
      PageController(initialPage: 1, viewportFraction: .5);
  final ValueNotifier<int> _currPageNotifier = ValueNotifier(1);

  @override
  void dispose() {
    _pageController.dispose();
    _currPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AccessListener(
      child: Responsive(
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
        desktop: HomeWeb(
          onPageChanged: (page) => _currPageNotifier.value = page,
          pageController: _pageController,
          currPageNotiifer: _currPageNotifier,
        ),
      ),
    );
  }
}
