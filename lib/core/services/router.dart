import 'package:client/features/auth/presentation/pages/auth_page.dart';
import 'package:client/features/home/presentation/pages/home_page.dart';
import 'package:client/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            return const CircularProgressIndicator();
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
