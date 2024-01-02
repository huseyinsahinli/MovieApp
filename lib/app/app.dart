import 'package:flutter/material.dart';
import 'package:movie_time/core/router/app_router.dart';
import 'package:movie_time/core/theme/custom_theme.dart';

class App extends StatelessWidget {
  App({super.key});
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Movie Time',
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(), // Adjust this with your route parser
      routerDelegate: appRouter.delegate(),
      theme: lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
