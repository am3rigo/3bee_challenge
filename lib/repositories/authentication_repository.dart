import 'package:mockito/mockito.dart';
import 'package:threebee_challenge/network/network_client.dart';
import 'package:threebee_challenge/shared_export.dart';

class AuthenticationRepository {
  final _networkClient = NetworkClient();

  Future<AuthorizationModel> loginWithCredentials(String email, String password) async {
    final response = await _networkClient.getDio(isAuthenticated: false).post(
      '/auth/jwt/create',
      data: {
        'email': email,
        'password': password,
      },
    );
    return AuthorizationModel.fromJson(response.data);
  }
}

class MockAuthenticationRepository extends Mock implements AuthenticationRepository {
  @override
  Future<AuthorizationModel> loginWithCredentials(String email, String password) async {
    return const AuthorizationModel(
      access: 'fake-access-token',
      refresh: 'fake-refresh-token',
    );
  }
}
