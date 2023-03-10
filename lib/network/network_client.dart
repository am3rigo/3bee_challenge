import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:threebee_challenge/network/authentication_interceptors.dart';
import 'package:threebee_challenge/shared_export.dart';

class NetworkClient {
  ///Ritorna un'instanza di [Dio] con preimpostati gli interceptor e la [baseUrl]
  Dio getDio({
    bool isAuthenticated = true,
  }) {
    String baseUrl = environmentConfig.baseUrl;

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );

    if (isAuthenticated) {
      dio.interceptors.add(AuthenticateInterceptors());
    }

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ));
    }

    return dio;
  }
}
