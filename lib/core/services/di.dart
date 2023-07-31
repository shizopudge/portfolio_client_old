import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasources/auth_local_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/settings/data/datasources/settings_local_data_source.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import 'dio.dart';
import 'router.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(await SharedPreferences.getInstance());

  /// Repositories
  getIt.registerSingleton(
      SettingsRepositoryImpl(localDataSource: SettingsLocalDataSourceImpl()));
  getIt.registerSingleton(AuthRepositoryImpl(
      localDataSource: AuthLocalDataSourceImpl(
          sharedPreferences: getIt<SharedPreferences>())));

  /// Router
  getIt.registerSingleton(AppRouter());
}
