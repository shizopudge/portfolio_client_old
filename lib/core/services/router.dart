import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          final isSettingsLoading = context
              .select<SettingsBloc, bool>((bloc) => bloc.state.isLoading);
          if (isSettingsLoading) {
            return const FractionallySizedBox(
                heightFactor: .1,
                widthFactor: .1,
                child: CircularProgressIndicator());
          }
          return const AuthPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
