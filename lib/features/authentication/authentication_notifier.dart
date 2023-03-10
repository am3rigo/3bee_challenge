import 'package:flutter/material.dart';
import 'package:threebee_challenge/shared_export.dart';

class AuthenticationNotifier extends ChangeNotifier {
  AuthorizationModel? authorization;

  bool get isAuthenticated => authorization?.access != null;

  Future<void> loginWithCredentials(String email, String password) async {
    try {
      authorization = await authenticationRepository.loginWithCredentials(
        email,
        password,
      );
      sharedPrefsService.setValue<String>(kSPAccessToken, authorization!.access);
      sharedPrefsService.setValue<String>(kSPRefreshToken, authorization!.refresh);
      notifyListeners();
    } catch (e) {
      logout();
      rethrow;
    }
  }

  Future<void> verifyToken() async {
    try {
      final token = await sharedPrefsService.getValue<String>(kSPAccessToken);
      final refreshToken = await sharedPrefsService.getValue<String>(kSPRefreshToken);

      if (token == null || refreshToken == null) {
        logout();
        return;
      }
      await authenticationRepository.verifyToken(token);
      authorization = AuthorizationModel(
        access: token,
        refresh: refreshToken,
      );
    } catch (e) {
      logout();
    }
  }

  Future<void> logout() async {
    sharedPrefsService.clearAll();
    authorization = null;
    notifyListeners();
  }
}
