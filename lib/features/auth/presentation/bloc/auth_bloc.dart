import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/failure/failure.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../../domain/usecases/get_is_signed_in_as_guest.dart';
import '../../domain/usecases/toggle_guest.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required GetIsSignedInAsGuest getIsSignedInAsGuest,
    required SetIsSignedInAsGuest setIsSignedInAsGuest,
  })  : _getIsSignedInAsGuestUseCase = getIsSignedInAsGuest,
        _setIsSignedInAsGuestUsecase = setIsSignedInAsGuest,
        super(const AuthState()) {
    on<_Started>(_started);
    on<_ToggleSignInForm>(_toggleSignInForm);
    on<_SetUsername>(_setUsername);
    on<_SetPassword>(_setPassword);
    on<_SignInAsGuest>(_signInAsGuest);
    on<_Logout>(_logout);
  }

  final GetIsSignedInAsGuest _getIsSignedInAsGuestUseCase;
  final SetIsSignedInAsGuest _setIsSignedInAsGuestUsecase;

  FutureOr<void> _started(_Started event, Emitter<AuthState> emit) async {
    final res = await _getIsSignedInAsGuestUseCase.call(NoParams());
    res.fold(
        (failure) => emit(state.copyWith(status: AuthStatus.notAuthorized)),
        (isSignedInAsGuest) {
      if (isSignedInAsGuest) {
        emit(state.copyWith(status: AuthStatus.guest));
      } else {
        emit(state.copyWith(status: AuthStatus.notAuthorized));
      }
    });
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
    final res = await _setIsSignedInAsGuestUsecase
        .call(const SetIsSignedInAsGuestParams(true));
    res.fold(
        (failure) => emit(state.copyWith(status: AuthStatus.notAuthorized)),
        (r) => emit(state.copyWith(status: AuthStatus.guest)));
  }

  FutureOr<void> _logout(event, Emitter<AuthState> emit) async {
    final res = await _setIsSignedInAsGuestUsecase
        .call(const SetIsSignedInAsGuestParams(false));
    res.fold(
        (failure) => emit(state.copyWith(status: AuthStatus.notAuthorized)),
        (r) => emit(state.copyWith(status: AuthStatus.notAuthorized)));
  }
}
