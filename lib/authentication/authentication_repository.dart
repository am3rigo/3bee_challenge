import 'package:threebee_challenge/network/network_client.dart';

class AuthenticationRepository {
  final _networkClient = NetworkClient();

  Future<void> loginWithCredentials(String email, String password) async {
    final response = await _networkClient.getDio().post(
      '/auth/jwt/create',
      data: {
        'email': email,
        'password': password,
      },
    );
  }
}
