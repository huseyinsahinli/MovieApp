import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_time/app/app_config.dart';

Future<void> mainCommon(AppConfig configuredApp) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );

  runApp(configuredApp);
}
