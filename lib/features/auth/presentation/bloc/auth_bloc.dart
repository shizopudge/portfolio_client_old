import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/failure/failure.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<_Started>(_started);
    on<_ToggleSignInForm>(_toggleSignInForm);
    on<_SetUsername>(_setUsername);
    on<_SetPassword>(_setPassword);
    on<_SignInAsGuest>(_signInAsGuest);
    on<_Logout>(_logout);
  }

  FutureOr<void> _started(_Started event, Emitter<AuthState> emit) async {
    // Check is user signed in or guest
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(status: AuthStatus.notAuthorized));
  }

  void _toggleSignInForm(_ToggleSignInForm event, Emitter<AuthState> emit) {
    if (state.isSigningIn) {
      emit(state.copyWith(status: AuthStatus.notAuthorized));
    } else {
      emit(state.copyWith(status: AuthStatus.signingIn));
    }
  }

  void _setUsername(_SetUsername event, Emitter<AuthState> emit) =>
      emit(state.copyWith(username: event.username));

  void _setPassword(_SetPassword event, Emitter<AuthState> emit) =>
      emit(state.copyWith(password: event.password));

  FutureOr<void> _signInAsGuest(
      _SignInAsGuest event, Emitter<AuthState> emit) async {
    // Set guest in shared_prefs
    emit(state.copyWith(status: AuthStatus.guest));
  }

  FutureOr<void> _logout(event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.notAuthorized));
  }
}
