import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/settings/data/datasources/settings_local_data_source.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import 'dio.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));

  /// Repositories
  getIt.registerSingleton(
      SettingsRepositoryImpl(localDataSource: SettingsLocalDataSourceImpl()));
}
