import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_time/app/app_config.dart';
import 'package:movie_time/core/services/rest_client.dart';

extension ContextX on BuildContext {
  RestClient get restClient {
    return RestClient(
      Dio(
        BaseOptions(
          baseUrl: AppConfig.of(this).baseUrl,
          headers: {
            "accept": "application/json",
            "Authorization": "Bearer ${AppConfig.of(this).apiKey}",
          },
        ),
      ),
    );
  }
}
