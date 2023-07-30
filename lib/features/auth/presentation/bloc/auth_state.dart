part of 'auth_bloc.dart';

enum AuthStatus {
  loading,
  notAuthorized,
  signingIn,
  authorized,
  guest,
  failure;

  bool get isLoading => this == AuthStatus.loading;
  bool get isNotAuthorized => this == AuthStatus.notAuthorized;
  bool get isSigningIn => this == AuthStatus.signingIn;
  bool get isAuthorized => this == AuthStatus.authorized;
  bool get isGuest => this == AuthStatus.guest;
  bool get isFailure => this == AuthStatus.failure;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    @Default('') String username,
    @Default('') String password,
    @Default(AuthStatus.loading) AuthStatus status,
    Failure? failure,
  }) = _AuthState;

  void when({
    VoidCallback? whenLoading,
    VoidCallback? whenNotAuthorized,
    VoidCallback? whenSigningIn,
    VoidCallback? whenAuthorized,
    VoidCallback? whenGuest,
    VoidCallback? whenFailure,
  }) =>
      switch (status) {
        AuthStatus.loading => whenLoading?.call(),
        AuthStatus.notAuthorized => whenNotAuthorized?.call(),
        AuthStatus.signingIn => whenSigningIn?.call(),
        AuthStatus.authorized => whenAuthorized?.call(),
        AuthStatus.guest => whenGuest?.call(),
        AuthStatus.failure => whenFailure?.call(),
      };

  bool get isLoading => status.isLoading;
  bool get isSigningIn => status.isSigningIn;
  bool get isAuthorized => status.isAuthorized;
  bool get isNotAuthorized => status.isNotAuthorized;
  bool get isGuest => status.isGuest;
  bool get isFailure => status.isFailure;

  bool get isValidated => username.isNotEmpty && password.isNotEmpty;
}
