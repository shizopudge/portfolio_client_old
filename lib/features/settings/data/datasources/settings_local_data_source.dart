import 'package:flutter/material.dart';

import '../../../../core/domain/entities/failure/failure.dart';

abstract interface class SettingsLocalDataSource {
  Future<void> preloadWallpaper({
    required BuildContext context,
    required AssetImage image,
  });
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  @override
  Future<void> preloadWallpaper({
    required BuildContext context,
    required AssetImage image,
  }) async {
    try {
      await precacheImage(image, context);
    } catch (e) {
      throw CasualFailure(message: e.toString());
    }
  }
}
