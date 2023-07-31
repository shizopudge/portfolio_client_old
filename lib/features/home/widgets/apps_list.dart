import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/assets.dart';
import '../../../core/presentation/widgets/buttons/circle_icon_button.dart';
import '../../../core/presentation/widgets/common/app_icon.dart';
import '../../../core/services/adaptative.dart';
import '../../../core/styles/colors.dart';
import '../cubit/home_cubit.dart';

class AppsList extends StatefulWidget {
  const AppsList({
    super.key,
  });

  @override
  State<AppsList> createState() => _AppsListState();
}

class _AppsListState extends State<AppsList> {
  final ValueNotifier<int> _currPageNotifier = ValueNotifier(1);
  final PageController _pageController =
      PageController(initialPage: 1, viewportFraction: .5);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return Scaffold(
      backgroundColor: Pallete.transparent,
      body: ValueListenableBuilder(
        valueListenable: _currPageNotifier,
        builder: (context, currPage, _) => Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: Adaptive.screenHeight! * .25),
              child: PageView(
                controller: _pageController,
                clipBehavior: Clip.none,
                onPageChanged: (int page) => _currPageNotifier.value = page,
                scrollDirection:
                    Adaptive.isMobile ? Axis.vertical : Axis.horizontal,
                children: [
                  AppIcon(
                    onTap: () => context.read<HomeCubit>().setPage(0),
                    name: 'Презентация',
                    imagePath: Assets.presentation,
                    isSelected: currPage == 0,
                  ),
                  AppIcon(
                    onTap: () => context.read<HomeCubit>().setPage(1),
                    name: 'Проекты',
                    imagePath: Assets.folder,
                    isSelected: currPage == 1,
                  ),
                  AppIcon(
                    onTap: () => context.read<HomeCubit>().setPage(2),
                    name: 'Настройки',
                    imagePath: Assets.settings,
                    isSelected: currPage == 2,
                  ),
                ],
              ),
            ),
            if (!Adaptive.isMobile && currPage > 0)
              Align(
                alignment: Alignment.centerLeft,
                child: CircleIconButton(
                  onPressed: () {
                    if (currPage > 0) {
                      _pageController.previousPage(
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
            if (!Adaptive.isMobile && currPage < 2)
              Align(
                alignment: Alignment.centerRight,
                child: CircleIconButton(
                  onPressed: () {
                    if (currPage < 2) {
                      _pageController.nextPage(
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
