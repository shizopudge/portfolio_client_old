import 'package:client/core/constants/assets.dart';
import 'package:client/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/animations/hover_animation.dart';
import '../../../../core/services/adaptative.dart';
import '../../../../core/services/mouse.dart';

class AuthWeb extends StatefulWidget {
  const AuthWeb({
    super.key,
  });

  @override
  State<AuthWeb> createState() => _AuthWebState();
}

class _AuthWebState extends State<AuthWeb> {
  @override
  Widget build(BuildContext context) {
    final wallpaper = context
        .select<SettingsBloc, AssetImage?>((bloc) => bloc.state.wallpaper);
    return MouseRegion(
      onHover: (event) {
        context.read<MouseCubit>().setStatus(MouseStatus.casual);
        context.read<MouseCubit>().setPosition(event.position);
      },
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: wallpaper ??
                    const AssetImage(
                      Assets.wallpaper1,
                    ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: HoverAnimation(
              builder: (isHovered) => Container(
                color: Colors.red,
                height: Adaptive.screenHeight! * .05,
                width: Adaptive.screenWidth! * .05,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      'DESKTOP',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: isHovered ? Colors.amber : Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
