import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';
import 'core/services/di.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) setPathUrlStrategy();
  await setup();
  runApp(const App());
}

void main() => bootstrap();
