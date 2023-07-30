import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/settings/presentation/bloc/settings_bloc.dart';
import '../../../styles/colors.dart';
import '../../animations/blur_animation.dart';
import '../../animations/opacity_animation.dart';

class Wallpaper extends StatelessWidget {
  const Wallpaper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final wallpaper = context
        .select<SettingsBloc, AssetImage?>((bloc) => bloc.state.wallpaper);
    if (wallpaper != null) {
      return BlurAnimation(
        duration: const Duration(milliseconds: 2000),
        child: OpacityAnimation(
          duration: const Duration(milliseconds: 2000),
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Pallete.second,
              image: DecorationImage(
                image: wallpaper,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    }
    return Container(
      constraints: const BoxConstraints.expand(),
      color: Pallete.second,
    );
  }
}
