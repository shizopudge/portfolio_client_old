import 'package:client/core/services/adaptative.dart';
import 'package:client/features/auth/presentation/widgets/auth_web.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: Center(
          child: Text('Mobile'),
        ),
        tablet: Center(
          child: Text('Tablet'),
        ),
        desktop: AuthWeb(),
      ),
    );
  }
}
