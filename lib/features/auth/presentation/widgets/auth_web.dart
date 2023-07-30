import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/presentation/animations/hover_animation.dart';
import '../../../../core/presentation/animations/opacity_animation.dart';
import '../../../../core/presentation/animations/slide_animation.dart';
import '../../../../core/presentation/widgets/buttons/common_elevated_button.dart';
import '../../../../core/presentation/widgets/pages/loading_page.dart';
import '../../../../core/presentation/widgets/text_fields/common_text_field.dart';
import '../../../../core/services/adaptative.dart';
import '../../../../core/styles/colors.dart';
import '../bloc/auth_bloc.dart';
import '../../../../core/presentation/widgets/cards/account_card.dart';
import 'greeting.dart';

class AuthWeb extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  const AuthWeb({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingPage(
            loaderHeight: 400,
            loaderWidth: 400,
          );
        }
        return Scaffold(
          backgroundColor: Pallete.transparent,
          body: Center(
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20)
                    .copyWith(top: 40),
                child: Column(
                  children: [
                    const SlideAnimation(
                      duration: Duration(milliseconds: 550),
                      begin: Offset(0, -1),
                      child: OpacityAnimation(
                        duration: Duration(milliseconds: 650),
                        child: Greeting(
                          height: 100,
                          width: 800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    if (!state.isSigningIn)
                      SlideAnimation(
                        duration: const Duration(milliseconds: 500),
                        begin: const Offset(0, -1),
                        child: OpacityAnimation(
                          duration: const Duration(milliseconds: 600),
                          child: AccountCardGuest(
                            onTap: () => context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInAsGuest()),
                            width: 340,
                          ),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (state.isSigningIn)
                          SlideAnimation(
                            duration: const Duration(milliseconds: 450),
                            begin: const Offset(0, -1),
                            child: OpacityAnimation(
                              duration: const Duration(milliseconds: 550),
                              child: HoverAnimation(
                                builder: (isHovered) => IconButton(
                                  onPressed: () => context
                                      .read<AuthBloc>()
                                      .add(const AuthEvent.toggleSignInForm()),
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Pallete.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (state.isSigningIn) const SizedBox(width: 15),
                        SlideAnimation(
                          duration: const Duration(milliseconds: 450),
                          begin: const Offset(0, -1),
                          child: OpacityAnimation(
                            duration: const Duration(milliseconds: 550),
                            child: AccountCardUser(
                              onTap: () => context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.toggleSignInForm()),
                              width: 340,
                              imagePath: Assets.avatar,
                              username: 'Рустам',
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (state.isSigningIn)
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            SlideAnimation(
                              duration: const Duration(milliseconds: 500),
                              begin: const Offset(0, -1),
                              child: OpacityAnimation(
                                duration: const Duration(milliseconds: 600),
                                child: CommonTextField(
                                  controller: usernameController,
                                  hintText: 'Username',
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SlideAnimation(
                              duration: const Duration(milliseconds: 510),
                              begin: const Offset(0, -1),
                              child: OpacityAnimation(
                                duration: const Duration(milliseconds: 610),
                                child: CommonTextField(
                                  controller: passwordController,
                                  hintText: 'Password',
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SlideAnimation(
                              duration: const Duration(milliseconds: 520),
                              begin: const Offset(0, -1),
                              child: OpacityAnimation(
                                duration: const Duration(milliseconds: 620),
                                child: CommonElevatedButton(
                                  onPressed: () {},
                                  minHeight: 55,
                                  minWidth: 150,
                                  isEnabled: state.isValidated,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
