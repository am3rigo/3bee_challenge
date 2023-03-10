import 'package:dio/dio.dart';
import 'package:threebee_challenge/constants/constants.dart';
import 'package:threebee_challenge/shared_export.dart';

class AuthenticateInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await _getToken();
    options.headers['Authorization'] = 'Bearer $token';
    return super.onRequest(options, handler);
  }

  Future<String> _getToken() async {
    return await sharedPrefsService.getValue<String>(kSPAccessToken) ?? '';
  }
}
