import 'package:flutter/material.dart';
import 'package:threebee_challenge/shared_export.dart';

class AuthenticationNotifier extends ChangeNotifier {
  AuthorizationModel? authorization;

  bool get isAuthenticated => authorization?.access != null;

  Future<void> loginWithCredentials(String email, String password) async {
    try {
      authorization = await authenticationRepository.loginWithCredentials(
        'andrea.valenzano@3bee.com',
        'test2022',
      );
      sharedPrefsService.setValue<String>(kSPAccessToken, authorization!.access);
      notifyListeners();
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
