import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'dio.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
}
