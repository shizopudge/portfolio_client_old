import 'package:flutter/material.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../repositories/settings_repository.dart';

class PreloadAssetImage implements UseCase<void, PreloadAssetImageParams> {
  final SettingsRepository repository;

  const PreloadAssetImage(this.repository);
  @override
  FutureEither<void> call(params) async => await repository.preloadAssetImage(
      context: params.context, image: params.image);
}

class PreloadAssetImageParams {
  final BuildContext context;
  final AssetImage image;

  PreloadAssetImageParams({
    required this.context,
    required this.image,
  });
}
