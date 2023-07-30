import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/domain/entities/scroll_behavior/scroll_behavior.dart';
import 'core/presentation/widgets/common/app_skeleton.dart';
import 'core/services/adaptative.dart';
import 'core/services/di.dart';
import 'core/services/router.dart';
import 'core/styles/colors.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/auth_page.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/settings/data/repositories/settings_repository_impl.dart';
import 'features/settings/domain/usecases/preload_asset_image.dart';
import 'features/settings/presentation/bloc/settings_bloc.dart';

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
          create: (context) => SettingsBloc(
              context: context,
              preloadAssetImageUsecase:
                  PreloadAssetImage(getIt<SettingsRepositoryImpl>()))
            ..add(const SettingsEvent.started()),
        ),
        BlocProvider(
          create: (_) => AuthBloc(),
        ),
        BlocProvider(
          create: (_) => AppRouterCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          fontFamily: 'PressStart2P',
          useMaterial3: true,
          scaffoldBackgroundColor: Pallete.primary,
        ),
        scrollBehavior: MyCustomScrollBehavior(),
        onGenerateRoute: getIt<AppRouter>().onGenerateRoute,
        navigatorObservers: [
          AppRouterObserver(),
        ],
        builder: (context, child) {
          final String? currPath = context.watch<AppRouterCubit>().state;
          if (currPath == AuthPage.path || currPath == HomePage.path) {
            return AppSkeleton(child: child);
          }
          return child ?? const SizedBox.shrink();
        },
      ),
    );
  }
}
