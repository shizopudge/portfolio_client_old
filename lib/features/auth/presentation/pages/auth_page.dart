import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/adaptative.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_web.dart';

class AuthPage extends StatefulWidget {
  static const String path = '/auth';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.started());
    super.initState();
  }

  late final TextEditingController _usernameController = TextEditingController()
    ..addListener(_usernameListener);
  late final TextEditingController _passwordController = TextEditingController()
    ..addListener(_passwordListener);

  void _usernameListener() => context
      .read<AuthBloc>()
      .add(AuthEvent.setUsername(_usernameController.text.trim()));
  void _passwordListener() => context
      .read<AuthBloc>()
      .add(AuthEvent.setPassword(_passwordController.text.trim()));

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          current.isAuthorized || current.isGuest || current.isFailure,
      listener: (context, state) => state.when(
        whenGuest: () => Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.path, (route) => false),
        whenAuthorized: () => Navigator.of(context)
            .pushNamedAndRemoveUntil(HomePage.path, (route) => false),
        whenFailure: () => debugPrint(state.failure.toString()),
      ),
      child: Responsive(
        mobile: const Center(
          child: Text('Mobile'),
        ),
        tablet: const Center(
          child: Text('Tablet'),
        ),
        desktop: AuthWeb(
          usernameController: _usernameController,
          passwordController: _passwordController,
        ),
      ),
    );
  }
}
