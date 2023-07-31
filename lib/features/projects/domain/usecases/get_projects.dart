import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../entities/project.dart';
import '../repositories/projects_repository.dart';

class GetProjects implements UseCase<List<Project>, NoParams> {
  final ProjectsRepository repository;

  const GetProjects(this.repository);
  @override
  FutureEither<List<Project>> call(NoParams params) async =>
      await repository.getProjects();
}
