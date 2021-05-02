import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

/// tests for RestaurantsApi
void main() {
  final instance = ApiClient().getRestaurantsApi();

  group(RestaurantsApi, () {
    // Get All Restaurants
    //
    // get all restaurants for user
    //
    //Future<BuiltList<DomainRestaurant>> restaurantsGet() async
    test('test restaurantsGet', () async {
      // TODO
    });

    // Get Restaurant Image
    //
    // get restaurant image
    //
    //Future<String> restaurantsImageGet() async
    test('test restaurantsImageGet', () async {
      // TODO
    });

    // Get Menu Item Image
    //
    // get menu item image
    //
    //Future<String> restaurantsMenuImageGet() async
    test('test restaurantsMenuImageGet', () async {
      // TODO
    });

    // Get Restaurant By Id
    //
    // get restaurant by id for user
    //
    //Future<DomainRestaurant> restaurantsRidGet(String rid) async
    test('test restaurantsRidGet', () async {
      // TODO
    });

    // Update Restaurant Image
    //
    // update restaurant image
    //
    //Future<DomainRestaurant> restaurantsRidImagePut() async
    test('test restaurantsRidImagePut', () async {
      // TODO
    });

    // Get Restaurant Menu
    //
    // get restaurant menu
    //
    //Future<BuiltList<DomainMenuItem>> restaurantsRidMenuGet(String rid) async
    test('test restaurantsRidMenuGet', () async {
      // TODO
    });

    // Delete MenuItem
    //
    // delete menu item
    //
    //Future<V1Response> restaurantsRidMenuIdDelete(String oid) async
    test('test restaurantsRidMenuIdDelete', () async {
      // TODO
    });

    // Get Menu Item By Id
    //
    // get menu item by id
    //
    //Future<DomainMenuItem> restaurantsRidMenuIdGet(String rid, String id) async
    test('test restaurantsRidMenuIdGet', () async {
      // TODO
    });

    // Update Menu Item Image
    //
    // update menu item image
    //
    //Future<DomainMenuItem> restaurantsRidMenuIdImagePut() async
    test('test restaurantsRidMenuIdImagePut', () async {
      // TODO
    });

    // Update Menu Item
    //
    // update menu item
    //
    //Future<V1Response> restaurantsRidMenuIdPut(String rid, String id, V1MenuItemUpdate input) async
    test('test restaurantsRidMenuIdPut', () async {
      // TODO
    });

    // Create MenuItem
    //
    // create menu item
    //
    //Future<V1IdResponse> restaurantsRidMenuPost(String rid, V1MenuItemInput input) async
    test('test restaurantsRidMenuPost', () async {
      // TODO
    });

    // Update Restaurant
    //
    // update restaurant
    //
    //Future<V1Response> restaurantsRidPut(String rid, V1RestaurantUpdateInput input) async
    test('test restaurantsRidPut', () async {
      // TODO
    });

    // Restaurant SignIn
    //
    // restaurant sign in
    //
    //Future<V1TokenResponse> restaurantsSignInPost(V1RestaurantsSignInInput input) async
    test('test restaurantsSignInPost', () async {
      // TODO
    });

    // Restaurant SignUp
    //
    // restaurant sign up
    //
    //Future<V1TokenResponse> restaurantsSignUpPost(V1RestaurantSignUpInput input) async
    test('test restaurantsSignUpPost', () async {
      // TODO
    });
  });
}
