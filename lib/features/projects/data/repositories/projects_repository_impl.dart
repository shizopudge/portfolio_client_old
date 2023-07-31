import '../../../../core/constants/type_defs.dart';
import '../datasources/projects_remote_data_source.dart';

import '../../domain/entities/project.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/failure/failure.dart';
import '../../domain/repositories/projects_repository.dart';

class ProjectsRepositoryImpl implements ProjectsRepository {
  final ProjectsRemoteDataSource remoteDataSource;

  ProjectsRepositoryImpl({required this.remoteDataSource});
  @override
  FutureEither<List<Project>> getProjects() async {
    try {
      final res = await remoteDataSource.getProjects();
      return Right(res);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CasualFailure(message: e.toString()));
    }
  }
}
