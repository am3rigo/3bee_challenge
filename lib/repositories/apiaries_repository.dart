import 'package:mockito/mockito.dart';
import 'package:threebee_challenge/network/network_client.dart';
import 'package:threebee_challenge/shared_export.dart';

class ApiariesRepository {
  final _networkClient = NetworkClient();

  Future<List<ApiaryModel>> getApiaries() async {
    final response = await _networkClient.getDio().post(
          '/apiaries',
        );

    final results = response.data["results"] as List<dynamic>;
    final apiaryList = <ApiaryModel>[];

    for (var apiaryJSON in results) {
      apiaryList.add(ApiaryModel.fromJson(apiaryJSON));
    }

    return apiaryList;
  }
}

class MockApiariesRepository extends Mock implements ApiariesRepository {
  @override
  Future<List<ApiaryModel>> getApiaries() async {
    return <ApiaryModel>[];
  }
}
