import 'package:test/test.dart';
import 'package:api_client/api_client.dart';


/// tests for CouriersApi
void main() {
  final instance = ApiClient().getCouriersApi();

  group(CouriersApi, () {
    // Get Courier By Id
    //
    // get courier by id
    //
    //Future<DomainCourier> couriersCidGet(String cid) async
    test('test couriersCidGet', () async {
      // TODO
    });

    // Update Courier
    //
    // update courier
    //
    //Future<V1Response> couriersCidPut(String cid, V1CourierUpdate input) async
    test('test couriersCidPut', () async {
      // TODO
    });

    // Courier SignIn
    //
    // courier sign in
    //
    //Future<V1TokenResponse> couriersSignInPost(V1SignInInput input) async
    test('test couriersSignInPost', () async {
      // TODO
    });

    // Courier SignUp
    //
    // courier sign up
    //
    //Future<V1TokenResponse> couriersSignUpPost(V1CourierSignUpInput input) async
    test('test couriersSignUpPost', () async {
      // TODO
    });

  });
}
