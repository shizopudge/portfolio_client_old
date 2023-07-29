import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/presentation/widgets/common/desktop_element.dart';
import '../../../../core/services/adaptative.dart';
import '../../../../core/styles/colors.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return Scaffold(
      backgroundColor: Pallete.transparent,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            crossAxisSpacing: 40,
            mainAxisSpacing: 15,
            childAspectRatio: .8,
          ),
          children: const [
            DesktopElement(
              name: 'Проекты',
              imagePath: Assets.folder,
            ),
            DesktopElement(
              name: 'Презентация',
              imagePath: Assets.presentation,
            ),
            DesktopElement(
              name: 'Настройки',
              imagePath: Assets.settings,
            ),
          ],
        ),
      ),
    );
  }
}
