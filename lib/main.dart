import 'package:flutter/material.dart';
import 'package:movie_time/app/app.dart';
import 'package:movie_time/app/app_config.dart';
import 'package:movie_time/core/env/env.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final configuredApp = AppConfig(
    environment: Environment.main,
    baseUrl: Env.baseUrl,
    imageUrl: Env.imageUrl,
    apiKey: Env.apiKey,
    child: App(),
  );
  runApp(configuredApp);
}
