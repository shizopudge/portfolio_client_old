import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/settings/presentation/bloc/settings_bloc.dart';
import '../../../constants/assets.dart';

class Wallpaper extends StatelessWidget {
  const Wallpaper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final wallpaper = context
        .select<SettingsBloc, AssetImage?>((bloc) => bloc.state.wallpaper);
    return Container(
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
    );
  }
}
