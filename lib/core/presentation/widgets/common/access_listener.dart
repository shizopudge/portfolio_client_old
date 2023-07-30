import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../features/auth/presentation/pages/auth_page.dart';

class AccessListener extends StatelessWidget {
  final Widget child;
  const AccessListener({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.when(
        whenNotAuthorized: () => Navigator.of(context)
            .pushNamedAndRemoveUntil(AuthPage.path, (route) => false),
      ),
      child: child,
    );
  }
}
