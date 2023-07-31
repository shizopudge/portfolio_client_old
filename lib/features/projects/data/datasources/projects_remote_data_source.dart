import 'package:dio/dio.dart';

import '../../../../core/constants/data.dart';
import '../../../../core/domain/entities/failure/failure.dart';
import '../../../../core/services/dio.dart';
import '../../domain/entities/project.dart';

abstract interface class ProjectsRemoteDataSource {
  Future<List<Project>> getProjects();
}

class ProjectsRemoteDataSourceImpl implements ProjectsRemoteDataSource {
  final DioClient dioClient;

  const ProjectsRemoteDataSourceImpl(this.dioClient);
  @override
  Future<List<Project>> getProjects() async {
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      return projects;
    } on DioException catch (e) {
      final res = e.response;
      if (res != null) throw ServerFailure.fromJson(res.data);
      throw CasualFailure(message: e.toString());
    } catch (e) {
      throw CasualFailure(message: e.toString());
    }
  }
}
