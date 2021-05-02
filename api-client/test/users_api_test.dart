import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

/// tests for UsersApi
void main() {
  final instance = ApiClient().getUsersApi();

  group(UsersApi, () {
    // User SignIn
    //
    // user sign in
    //
    //Future<V1TokenResponse> usersSignInPost(V1UserSignInInput input) async
    test('test usersSignInPost', () async {
      // TODO
    });

    // User SignUp
    //
    // user sign up
    //
    //Future<V1TokenResponse> usersSignUpPost(V1UserSignUpInput input) async
    test('test usersSignUpPost', () async {
      // TODO
    });

    // Get User By Id
    //
    // get user by id
    //
    //Future<DomainUser> usersUidGet(String uid) async
    test('test usersUidGet', () async {
      // TODO
    });

    // Update User
    //
    // update user
    //
    //Future<V1Response> usersUidPut(String uid, V1UserUpdateInput input) async
    test('test usersUidPut', () async {
      // TODO
    });
  });
}
