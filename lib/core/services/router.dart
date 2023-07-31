import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/home/cubit/home_cubit.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';
import '../presentation/widgets/common/access_listener.dart';
import '../presentation/widgets/pages/splash_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => BlocListener<SettingsBloc, SettingsState>(
            listenWhen: (previous, current) =>
                current.isFailure || current.isLoaded,
            listener: (context, state) => state.when(
                whenLoaded: () => Navigator.of(context)
                    .pushNamedAndRemoveUntil(AuthPage.path, (route) => false)),
            child: const SplashPage(),
          ),
        );
      case AuthPage.path:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AuthPage(),
        );
      case HomePage.path:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => AccessListener(
            child: BlocProvider(
              create: (_) => HomeCubit(),
              child: const HomePage(),
            ),
          ),
        );
      default:
        return null;
    }
  }
}

class AppRouterObserver extends RouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    final String? currPath = route.settings.name;
    route.navigator?.context.read<AppRouterCubit>().setcurrPath(currPath);
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final String? currPath = newRoute?.settings.name;
    newRoute?.navigator?.context.read<AppRouterCubit>().setcurrPath(currPath);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final String? currPath = route.settings.name;
    route.navigator?.context.read<AppRouterCubit>().setcurrPath(currPath);
    super.didPop(route, previousRoute);
  }
}

class AppRouterCubit extends Cubit<String?> {
  AppRouterCubit() : super(null);

  void setcurrPath(String? path) => emit(path);
}
