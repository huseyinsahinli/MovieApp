import 'package:flutter/material.dart';

enum Environment { main, dev, test }

class AppConfig extends InheritedWidget {
  const AppConfig({
    Key? key,
    required this.environment,
    required this.baseUrl,
    required this.imageUrl,
    required this.apiKey,
    required Widget child,
  }) : super(key: key, child: child);

  final Environment environment;
  final String baseUrl;
  final String imageUrl;
  final String apiKey;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }
}
