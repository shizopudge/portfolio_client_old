import 'dart:async';

import '../../../../features/auth/presentation/pages/auth_page.dart';

import 'wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../features/settings/presentation/bloc/settings_bloc.dart';
import '../../../styles/colors.dart';
import '../../animations/opacity_animation.dart';
import '../../animations/slide_animation.dart';

class AppSkeleton extends StatefulWidget {
  final Widget child;
  const AppSkeleton({
    super.key,
    required this.child,
  });

  @override
  State<AppSkeleton> createState() => _AppSkeletonState();
}

class _AppSkeletonState extends State<AppSkeleton> {
  final ValueNotifier<TimeOfDay> _timeOfDayNotifier =
      ValueNotifier<TimeOfDay>(TimeOfDay.now());

  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 1000),
        (timer) => _timeOfDayNotifier.value = TimeOfDay.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final settingsState = context.watch<SettingsBloc>().state;
    if (settingsState.isLoading) return widget.child;
    return Stack(
      children: [
        const Wallpaper(),
        widget.child,
        SlideAnimation(
          begin: const Offset(0, -1),
          duration: const Duration(milliseconds: 500),
          child: OpacityAnimation(
            duration: const Duration(milliseconds: 700),
            child: Container(
              height: 32,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              color: Pallete.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (authState.isAuthorized || authState.isGuest)
                    FittedBox(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => context.go(AuthPage.authPagePath),
                            visualDensity: VisualDensity.compact,
                            icon: const Icon(
                              Icons.power_settings_new_rounded,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            visualDensity: VisualDensity.compact,
                            icon: const Icon(
                              Icons.settings,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  FittedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.wifi,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'RUS',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _timeOfDayNotifier,
                          builder: (context, timeOfDay, child) => Text(
                            timeOfDay.format(context),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
