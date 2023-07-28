import 'package:client/core/presentation/animations/hover_animation.dart';
import 'package:client/core/styles/colors.dart';

import '../../../../core/presentation/widgets/buttons/common_elevated_button.dart';
import '../bloc/auth_bloc.dart';

import '../../../../core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/presentation/widgets/common/main_app_bar.dart';
import '../../../../core/presentation/widgets/common/wallpaper.dart';
import '../../../../core/presentation/widgets/text_fields/common_text_field.dart';
import '../../../../core/services/adaptative.dart';
import 'account_card.dart';

class AuthWeb extends StatefulWidget {
  const AuthWeb({
    super.key,
  });

  @override
  State<AuthWeb> createState() => _AuthWebState();
}

class _AuthWebState extends State<AuthWeb> {
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
    Adaptive.init(context);
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          current.isAuthorized || current.isGuest || current.isFailure,
      listener: (context, state) => state.whenOrNull(
        whenGuest: () => context.go('/home'),
        whenAuthorized: () {},
        whenFailure: () {},
      ),
      builder: (context, state) => Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            const Wallpaper(),
            Center(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!state.isSigningIn)
                            AccountCardGuest(
                              onTap: () => context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.signInAsGuest()),
                              width: 340,
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (state.isSigningIn)
                                HoverAnimation(
                                  builder: (isHovered) => IconButton(
                                    onPressed: () => context
                                        .read<AuthBloc>()
                                        .add(
                                            const AuthEvent.toggleSignInForm()),
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Pallete.primary,
                                    ),
                                  ),
                                ),
                              if (state.isSigningIn) const SizedBox(width: 15),
                              AccountCardUser(
                                onTap: () => context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.toggleSignInForm()),
                                width: 340,
                                imagePath: Assets.avatar,
                                username: 'Рустам',
                              ),
                            ],
                          ),
                          if (state.isSigningIn)
                            SizedBox(
                              width: 400,
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  CommonTextField(
                                    controller: _usernameController,
                                    hintText: 'Username',
                                  ),
                                  const SizedBox(height: 20),
                                  CommonTextField(
                                    controller: _passwordController,
                                    hintText: 'Password',
                                  ),
                                  const SizedBox(height: 20),
                                  CommonElevatedButton(
                                    onPressed: () {},
                                    minHeight: 55,
                                    minWidth: 150,
                                    isEnabled: state.isValidated,
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const MainAppBar(),
          ],
        ),
      ),
    );
  }
}
