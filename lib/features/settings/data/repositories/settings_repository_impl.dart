import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/entities/failure/failure.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_local_data_source.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource localDataSource;

  SettingsRepositoryImpl({
    required this.localDataSource,
  });
  @override
  FutureEither<void> preloadAssetImage({
    required BuildContext context,
    required AssetImage image,
  }) async {
    try {
      await localDataSource.preloadAssetImage(context: context, image: image);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CasualFailure(message: e.toString()));
    }
  }
}
