import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

/// tests for AdminsApi
void main() {
  final instance = ApiClient().getAdminsApi();

  group(AdminsApi, () {
    // Admin SignIn
    //
    // admin sign in
    //
    //Future<V1TokenResponse> adminsSignInPost(V1AdminSignInInput input) async
    test('test adminsSignInPost', () async {
      // TODO
    });
  });
}
