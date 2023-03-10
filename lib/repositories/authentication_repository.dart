import 'package:threebee_challenge/network/network_client.dart';
import 'package:threebee_challenge/shared_export.dart';

class AuthenticationRepository {
  final _networkClient = NetworkClient();

  Future<AuthorizationModel> loginWithCredentials(String email, String password) async {
    final response = await _networkClient.getDio().post(
      '/auth/jwt/create',
      data: {
        'email': email,
        'password': password,
      },
    );
    return AuthorizationModel.fromJson(response.data);
  }
}
