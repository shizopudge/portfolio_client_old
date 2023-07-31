// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(
          ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res, ProjectsEvent>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res, $Val extends ProjectsEvent>
    implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

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
    extends _$ProjectsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProjectsEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProjectsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$ProjectsState {
  List<Project> get projects => throw _privateConstructorUsedError;
  ProjectsStatus get status => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectsStateCopyWith<ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
  @useResult
  $Res call({List<Project> projects, ProjectsStatus status, Failure? failure});
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res, $Val extends ProjectsState>
    implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectsStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectsStateCopyWith<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  factory _$$_ProjectsStateCopyWith(
          _$_ProjectsState value, $Res Function(_$_ProjectsState) then) =
      __$$_ProjectsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Project> projects, ProjectsStatus status, Failure? failure});
}

/// @nodoc
class __$$_ProjectsStateCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res, _$_ProjectsState>
    implements _$$_ProjectsStateCopyWith<$Res> {
  __$$_ProjectsStateCopyWithImpl(
      _$_ProjectsState _value, $Res Function(_$_ProjectsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_$_ProjectsState(
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectsStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_ProjectsState extends _ProjectsState {
  const _$_ProjectsState(
      {final List<Project> projects = const [],
      this.status = ProjectsStatus.loading,
      this.failure})
      : _projects = projects,
        super._();

  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  @JsonKey()
  final ProjectsStatus status;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ProjectsState(projects: $projects, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectsState &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_projects), status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectsStateCopyWith<_$_ProjectsState> get copyWith =>
      __$$_ProjectsStateCopyWithImpl<_$_ProjectsState>(this, _$identity);
}

abstract class _ProjectsState extends ProjectsState {
  const factory _ProjectsState(
      {final List<Project> projects,
      final ProjectsStatus status,
      final Failure? failure}) = _$_ProjectsState;
  const _ProjectsState._() : super._();

  @override
  List<Project> get projects;
  @override
  ProjectsStatus get status;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectsStateCopyWith<_$_ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}
