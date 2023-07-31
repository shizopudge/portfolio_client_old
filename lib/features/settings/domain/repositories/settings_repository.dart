import 'package:flutter/material.dart';

import '../../../../core/constants/type_defs.dart';

abstract interface class SettingsRepository {
  FutureEither<void> preloadWallpaper({
    required BuildContext context,
    required AssetImage image,
  });
}
