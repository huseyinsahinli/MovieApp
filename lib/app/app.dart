import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movie_time/core/router/app_router.dart';
import 'package:movie_time/core/theme/custom_theme.dart';
import 'package:movie_time/l10n/l10n.dart';

class App extends StatelessWidget {
  App({super.key});
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Movie Time',
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', 'US'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routeInformationParser: appRouter.defaultRouteParser(), // Adjust this with your route parser
      routerDelegate: appRouter.delegate(),
      theme: lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
