import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:threebee_challenge/constants/network_constants.dart';

class NetworkClient {
  ///Ritorna un'instanza di [Dio] con preimpostati gli interceptor e la [baseUrl]
  Dio getDio({
    bool isAuthenticated = true,
  }) {
    String baseUrl = kBaseUrl;

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ));
    }

    return dio;
  }
}
