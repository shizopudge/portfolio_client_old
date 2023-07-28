import 'package:flutter/material.dart';

abstract interface class SettingsLocalDataSource {
  Future<void> preloadAssetImage({
    required BuildContext context,
    required AssetImage image,
  });
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  @override
  Future<void> preloadAssetImage({
    required BuildContext context,
    required AssetImage image,
  }) async {
    try {
      await precacheImage(image, context);
    } catch (e) {}
  }
}
