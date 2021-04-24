import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

/// tests for CategoriesApi
void main() {
  final instance = ApiClient().getCategoriesApi();

  group(CategoriesApi, () {
    // Get Category By Id
    //
    // get category by id for restaurant
    //
    //Future<DomainCategory> restaurantsRidCategoriesCidGet(String rid, String cid) async
    test('test restaurantsRidCategoriesCidGet', () async {
      // TODO
    });

    // Get Menu By Category Id
    //
    // get menu items by catgory id
    //
    //Future<BuiltList<DomainMenuItem>> restaurantsRidCategoriesCidMenuGet(String rid, String cid) async
    test('test restaurantsRidCategoriesCidMenuGet', () async {
      // TODO
    });

    // Update Category
    //
    // update category
    //
    //Future<V1Response> restaurantsRidCategoriesCidPut(String rid, String cid) async
    test('test restaurantsRidCategoriesCidPut', () async {
      // TODO
    });

    // Get All Categories
    //
    // get all categories for user
    //
    //Future<BuiltList<DomainCategory>> restaurantsRidCategoriesGet(String rid) async
    test('test restaurantsRidCategoriesGet', () async {
      // TODO
    });

    // Create Category
    //
    // create category
    //
    //Future<V1IdResponse> restaurantsRidCategoriesPost(String rid, V1CategoryInput input) async
    test('test restaurantsRidCategoriesPost', () async {
      // TODO
    });

    // Delete Category
    //
    // delete category
    //
    //Future<V1Response> restaurantsRidMenuCidDelete(String rid, String cid) async
    test('test restaurantsRidMenuCidDelete', () async {
      // TODO
    });
  });
}
