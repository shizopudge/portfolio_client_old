import '../../../../core/constants/type_defs.dart';
import '../entities/project.dart';

abstract interface class ProjectsRepository {
  FutureEither<List<Project>> getProjects();
}
