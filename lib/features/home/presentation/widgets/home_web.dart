import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/presentation/widgets/buttons/circle_icon_button.dart';
import '../../../../core/presentation/widgets/common/app_icon.dart';
import '../../../../core/services/adaptative.dart';
import '../../../../core/styles/colors.dart';

class HomeWeb extends StatelessWidget {
  final void Function(int page) onPageChanged;
  final PageController pageController;
  final ValueNotifier<int> currPageNotiifer;
  const HomeWeb({
    super.key,
    required this.onPageChanged,
    required this.pageController,
    required this.currPageNotiifer,
  });

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return Scaffold(
      backgroundColor: Pallete.transparent,
      body: ValueListenableBuilder(
        valueListenable: currPageNotiifer,
        builder: (context, currPage, _) => Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: Adaptive.screenHeight! * .25),
              child: PageView(
                controller: pageController,
                onPageChanged: onPageChanged,
                scrollDirection: Axis.horizontal,
                children: [
                  AppIcon(
                    name: 'Презентация',
                    imagePath: Assets.presentation,
                    isSelected: currPage == 0,
                  ),
                  AppIcon(
                    name: 'Проекты',
                    imagePath: Assets.folder,
                    isSelected: currPage == 1,
                  ),
                  AppIcon(
                    name: 'Настройки',
                    imagePath: Assets.settings,
                    isSelected: currPage == 2,
                  ),
                ],
              ),
            ),
            if (currPage > 0)
              Align(
                alignment: Alignment.centerLeft,
                child: CircleIconButton(
                  onPressed: () {
                    if (currPage > 0) {
                      pageController.animateToPage(
                        currPage - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  radius: 40,
                ),
              ),
            if (currPage < 2)
              Align(
                alignment: Alignment.centerRight,
                child: CircleIconButton(
                  onPressed: () {
                    if (currPage < 2) {
                      pageController.animateToPage(
                        currPage + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                  radius: 40,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
