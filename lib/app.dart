import 'package:client/core/services/mouse.dart';
import 'package:client/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/adaptative.dart';
import 'core/services/router.dart';
import 'core/styles/colors.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingsBloc(context: context)
            ..add(const SettingsEvent.started()),
        ),
        // if (kIsWeb)
        BlocProvider(
          create: (_) => MouseCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          fontFamily: 'PressStart2P',
          useMaterial3: true,
          scaffoldBackgroundColor: Pallete.black,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
