import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';
import '../presentation/widgets/common/app_skeleton.dart';
import '../presentation/widgets/pages/splash_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BlocListener<SettingsBloc, SettingsState>(
          listenWhen: (previous, current) =>
              current.isFailure || current.isLoaded,
          listener: (context, state) => state.when(
            whenLoaded: () {
              context.go(AuthPage.authPagePath);
            },
          ),
          child: const SplashPage(),
        ),
        routes: [
          ShellRoute(
            builder: (context, state, child) {
              final String? currentPath = state.fullPath;
              if (currentPath == AuthPage.authPagePath ||
                  currentPath == HomePage.homePagePath) {
                return AppSkeleton(
                  child: child,
                );
              }
              return child;
            },
            routes: [
              GoRoute(
                path: AuthPage.authPageName,
                builder: (context, state) => const AuthPage(),
              ),
              GoRoute(
                path: HomePage.homePageName,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
