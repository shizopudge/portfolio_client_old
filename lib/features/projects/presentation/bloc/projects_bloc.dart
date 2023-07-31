import 'package:bloc/bloc.dart';
import '../../domain/entities/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/failure/failure.dart';

part 'projects_event.dart';
part 'projects_state.dart';
part 'projects_bloc.freezed.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(const ProjectsState()) {
    on<ProjectsEvent>((event, emit) {});
  }
}
