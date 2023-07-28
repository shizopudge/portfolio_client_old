part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.toggleSignInForm() = _ToggleSignInForm;
  const factory AuthEvent.setUsername(String username) = _SetUsername;
  const factory AuthEvent.setPassword(String password) = _SetPassword;
  const factory AuthEvent.signInAsGuest() = _SignInAsGuest;
}
