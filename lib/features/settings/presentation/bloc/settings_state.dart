part of 'settings_bloc.dart';

enum SettingsStatus {
  loading,
  loaded,
  failure;

  bool get isLoading => this == SettingsStatus.loading;
  bool get isLoaded => this == SettingsStatus.loaded;
  bool get isFailure => this == SettingsStatus.failure;
}

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState({
    AssetImage? wallpaper,
    @Default(SettingsStatus.loading) SettingsStatus status,
    Failure? failure,
  }) = _SettingsState;

  void when({
    VoidCallback? whenLoading,
    VoidCallback? whenLoaded,
    VoidCallback? whenFailure,
  }) =>
      switch (status) {
        SettingsStatus.loading => whenLoading?.call(),
        SettingsStatus.loaded => whenLoaded?.call(),
        SettingsStatus.failure => whenFailure?.call(),
      };

  bool get isLoading => status.isLoading;
  bool get isLoaded => status.isLoaded;
  bool get isFailure => status.isFailure;
}
