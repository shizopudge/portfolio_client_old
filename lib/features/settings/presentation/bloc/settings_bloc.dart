import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/domain/entities/failure/failure.dart';
import '../../domain/usecases/preload_wallpaper.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required this.context,
    required PreloadWallpaper preloadAssetImageUsecase,
  })  : _preloadAssetImageUsecase = preloadAssetImageUsecase,
        super(const SettingsState()) {
    on<_Started>(_started);
  }

  final BuildContext context;
  final PreloadWallpaper _preloadAssetImageUsecase;

  FutureOr<void> _started(_Started event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(status: SettingsStatus.loading));
    const AssetImage wallpaper = AssetImage(Assets.wallpaper1);
    final res = await _preloadAssetImageUsecase
        .call(PreloadAssetImageParams(context: context, image: wallpaper));
    res.fold(
      (l) =>
          state.copyWith(status: SettingsStatus.loaded, wallpaper: wallpaper),
      (r) => emit(
        state.copyWith(status: SettingsStatus.loaded, wallpaper: wallpaper),
      ),
    );
  }
}
