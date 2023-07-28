import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/core/domain/entities/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/assets.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required this.context,
  }) : super(const SettingsState()) {
    on<_Started>(_started);
  }

  final BuildContext context;

  FutureOr<void> _started(_Started event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(status: SettingsStatus.loading));
    const AssetImage wallpaper = AssetImage(Assets.wallpaper1);
    emit(state.copyWith(status: SettingsStatus.loaded, wallpaper: wallpaper));
  }
}
