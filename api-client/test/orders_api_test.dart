import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

/// tests for OrdersApi
void main() {
  final instance = ApiClient().getOrdersApi();

  group(OrdersApi, () {
    // Get Active Order
    //
    // get active order for courier
    //
    //Future<V1Response> couriersCidOrdersGet(String cid) async
    test('test couriersCidOrdersGet', () async {
      // TODO
    });

    // Delete Order
    //
    // delete order
    //
    //Future<V1Response> ordersOidDelete(String oid) async
    test('test ordersOidDelete', () async {
      // TODO
    });

    // Get Order By Id
    //
    // get order by id
    //
    //Future<DomainOrder> ordersOidGet(String oid) async
    test('test ordersOidGet', () async {
      // TODO
    });

    // Get All Order Items By Order Id
    //
    // get all order items by order id
    //
    //Future<BuiltList<DomainOrderItem>> ordersOidItemsGet(String oid) async
    test('test ordersOidItemsGet', () async {
      // TODO
    });

    // Delete Order Item
    //
    // delete order item
    //
    //Future<V1Response> ordersOidItemsIdDelete(String oid, String id) async
    test('test ordersOidItemsIdDelete', () async {
      // TODO
    });

    // Get Order Item By Id
    //
    // get order item by id
    //
    //Future<DomainOrderItem> ordersOidItemsIdGet(String oid, String id) async
    test('test ordersOidItemsIdGet', () async {
      // TODO
    });

    // Update Order Item
    //
    // update order item
    //
    //Future<V1Response> ordersOidItemsIdPut(String oid, String id, V1OrderItemUpdate input) async
    test('test ordersOidItemsIdPut', () async {
      // TODO
    });

    // Create Order Item
    //
    // create order item
    //
    //Future<V1IdResponse> ordersOidItemsPost(String oid, V1OrderItemInput input) async
    test('test ordersOidItemsPost', () async {
      // TODO
    });

    // Update Order
    //
    // update order
    //
    //Future<V1Response> ordersOidPut(String oid, V1OrderUpdate input) async
    test('test ordersOidPut', () async {
      // TODO
    });

    // Create Order
    //
    // create order
    //
    //Future<V1IdResponse> ordersPost(V1OrderInput input) async
    test('test ordersPost', () async {
      // TODO
    });

    // Get All Active Orders For Restaurant
    //
    // get all active orders for restaurant
    //
    //Future<BuiltList<DomainOrder>> restaurantsRidOrdersGet(String rid) async
    test('test restaurantsRidOrdersGet', () async {
      // TODO
    });

    // Get All Orders
    //
    // get all orders for user
    //
    //Future<BuiltList<DomainOrder>> usersUidOrdersGet(String uid, { String status }) async
    test('test usersUidOrdersGet', () async {
      // TODO
    });
  });
}
