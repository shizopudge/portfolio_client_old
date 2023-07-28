part of 'auth_bloc.dart';

enum AuthStatus {
  notAuthorized,
  signingIn,
  authorized,
  guest,
  failure;

  bool get isSigningIn => this == AuthStatus.signingIn;
  bool get isAuthorized => this == AuthStatus.authorized;
  bool get isNotAuthorized => this == AuthStatus.notAuthorized;
  bool get isGuest => this == AuthStatus.guest;
  bool get isFailure => this == AuthStatus.failure;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    @Default('') String username,
    @Default('') String password,
    @Default(AuthStatus.notAuthorized) AuthStatus status,
  }) = _AuthState;

  void whenOrNull({
    VoidCallback? whenNotAuthorized,
    VoidCallback? whenSigningIn,
    VoidCallback? whenAuthorized,
    VoidCallback? whenGuest,
    VoidCallback? whenFailure,
  }) =>
      switch (status) {
        AuthStatus.notAuthorized => whenNotAuthorized?.call(),
        AuthStatus.signingIn => whenSigningIn?.call(),
        AuthStatus.authorized => whenAuthorized?.call(),
        AuthStatus.guest => whenGuest?.call(),
        AuthStatus.failure => whenFailure?.call(),
      };

  bool get isSigningIn => status.isSigningIn;
  bool get isAuthorized => status.isAuthorized;
  bool get isNotAuthorized => status.isNotAuthorized;
  bool get isGuest => status.isGuest;
  bool get isFailure => status.isFailure;

  bool get isValidated => username.isNotEmpty && password.isNotEmpty;
}
