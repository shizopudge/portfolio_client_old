part of 'projects_bloc.dart';

enum ProjectsStatus {
  loading,
  loaded,
  failure;

  bool get isLoading => this == ProjectsStatus.loading;
  bool get isLoaded => this == ProjectsStatus.loaded;
  bool get isFailure => this == ProjectsStatus.failure;
}

@freezed
class ProjectsState with _$ProjectsState {
  const ProjectsState._();
  const factory ProjectsState({
    @Default([]) List<Project> projects,
    @Default(ProjectsStatus.loading) ProjectsStatus status,
    Failure? failure,
  }) = _ProjectsState;

  bool get isLoading => status.isLoading;
  bool get isLoaded => status.isLoaded;
  bool get isFailure => status.isFailure;
}
