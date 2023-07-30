// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ToggleSignInFormCopyWith<$Res> {
  factory _$$_ToggleSignInFormCopyWith(
          _$_ToggleSignInForm value, $Res Function(_$_ToggleSignInForm) then) =
      __$$_ToggleSignInFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleSignInFormCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ToggleSignInForm>
    implements _$$_ToggleSignInFormCopyWith<$Res> {
  __$$_ToggleSignInFormCopyWithImpl(
      _$_ToggleSignInForm _value, $Res Function(_$_ToggleSignInForm) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleSignInForm implements _ToggleSignInForm {
  const _$_ToggleSignInForm();

  @override
  String toString() {
    return 'AuthEvent.toggleSignInForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleSignInForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return toggleSignInForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return toggleSignInForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (toggleSignInForm != null) {
      return toggleSignInForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return toggleSignInForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return toggleSignInForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (toggleSignInForm != null) {
      return toggleSignInForm(this);
    }
    return orElse();
  }
}

abstract class _ToggleSignInForm implements AuthEvent {
  const factory _ToggleSignInForm() = _$_ToggleSignInForm;
}

/// @nodoc
abstract class _$$_SetUsernameCopyWith<$Res> {
  factory _$$_SetUsernameCopyWith(
          _$_SetUsername value, $Res Function(_$_SetUsername) then) =
      __$$_SetUsernameCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_SetUsernameCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SetUsername>
    implements _$$_SetUsernameCopyWith<$Res> {
  __$$_SetUsernameCopyWithImpl(
      _$_SetUsername _value, $Res Function(_$_SetUsername) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_SetUsername(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetUsername implements _SetUsername {
  const _$_SetUsername(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.setUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetUsername &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetUsernameCopyWith<_$_SetUsername> get copyWith =>
      __$$_SetUsernameCopyWithImpl<_$_SetUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return setUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return setUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (setUsername != null) {
      return setUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return setUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return setUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setUsername != null) {
      return setUsername(this);
    }
    return orElse();
  }
}

abstract class _SetUsername implements AuthEvent {
  const factory _SetUsername(final String username) = _$_SetUsername;

  String get username;
  @JsonKey(ignore: true)
  _$$_SetUsernameCopyWith<_$_SetUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPasswordCopyWith<$Res> {
  factory _$$_SetPasswordCopyWith(
          _$_SetPassword value, $Res Function(_$_SetPassword) then) =
      __$$_SetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_SetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SetPassword>
    implements _$$_SetPasswordCopyWith<$Res> {
  __$$_SetPasswordCopyWithImpl(
      _$_SetPassword _value, $Res Function(_$_SetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_SetPassword(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPassword implements _SetPassword {
  const _$_SetPassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.setPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPasswordCopyWith<_$_SetPassword> get copyWith =>
      __$$_SetPasswordCopyWithImpl<_$_SetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return setPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPassword implements AuthEvent {
  const factory _SetPassword(final String password) = _$_SetPassword;

  String get password;
  @JsonKey(ignore: true)
  _$$_SetPasswordCopyWith<_$_SetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInAsGuestCopyWith<$Res> {
  factory _$$_SignInAsGuestCopyWith(
          _$_SignInAsGuest value, $Res Function(_$_SignInAsGuest) then) =
      __$$_SignInAsGuestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInAsGuestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInAsGuest>
    implements _$$_SignInAsGuestCopyWith<$Res> {
  __$$_SignInAsGuestCopyWithImpl(
      _$_SignInAsGuest _value, $Res Function(_$_SignInAsGuest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInAsGuest implements _SignInAsGuest {
  const _$_SignInAsGuest();

  @override
  String toString() {
    return 'AuthEvent.signInAsGuest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInAsGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return signInAsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return signInAsGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signInAsGuest != null) {
      return signInAsGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return signInAsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return signInAsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInAsGuest != null) {
      return signInAsGuest(this);
    }
    return orElse();
  }
}

abstract class _SignInAsGuest implements AuthEvent {
  const factory _SignInAsGuest() = _$_SignInAsGuest;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toggleSignInForm,
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() signInAsGuest,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toggleSignInForm,
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? signInAsGuest,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toggleSignInForm,
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? signInAsGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleSignInForm value) toggleSignInForm,
    required TResult Function(_SetUsername value) setUsername,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_SignInAsGuest value) signInAsGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult? Function(_SetUsername value)? setUsername,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_SignInAsGuest value)? signInAsGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleSignInForm value)? toggleSignInForm,
    TResult Function(_SetUsername value)? setUsername,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_SignInAsGuest value)? signInAsGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String username, String password, AuthStatus status, Failure? failure});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username, String password, AuthStatus status, Failure? failure});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_$_AuthState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.username = '',
      this.password = '',
      this.status = AuthStatus.loading,
      this.failure})
      : super._();

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final AuthStatus status;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState(username: $username, password: $password, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final String username,
      final String password,
      final AuthStatus status,
      final Failure? failure}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  String get username;
  @override
  String get password;
  @override
  AuthStatus get status;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
