import 'package:yad/core/domain/models/order.dart';
import 'package:yad/core/domain/repos/auth/auth_repo.dart';

import 'orders_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';
import 'package:api_client/api_client.dart';

class CourierOrdersRepo extends OrdersRepo {
  final OrdersApi _ordersApi;
  final RestaurantsApi _restaurantsApi;
  final UsersApi _usersApi;
  final AuthRepo _authRepo;

  CourierOrdersRepo(ApiClient api, this._authRepo)
      : _ordersApi = api.getOrdersApi(),
        _restaurantsApi = api.getRestaurantsApi(),
        _usersApi = api.getUsersApi();

  @override
  Future<Result<List<Order>>> loadOrders() async {
    final idResult = await _authRepo.currentId();
    final id = idResult.value;
    if (id == null) {
      return idResult.to();
    }
    return _ordersApi.couriersCidOrdersGet(cid: id.toString()).then(
        (value) async {
      final result = resultFromResponse(value);
      final order = result.value;
      if (order == null) {
        return result.to();
      }
      final userResult = await _usersApi
          .usersUidGet(uid: order.userId.toString())
          .then((value) => resultFromResponse(value));
      final user = userResult.value;
      if (user == null) {
        return userResult.to();
      }
      final uLat = user.location?.latitude;
      final uLon = user.location?.latitude;
      final restaurantResult = await _restaurantsApi
          .restaurantsRidGet(rid: order.restaurantId.toString())
          .then((value) => resultFromResponse(value));
      final restaurant = restaurantResult.value;
      if (restaurant == null) {
        return restaurantResult.to();
      }
      final rLat = restaurant.location?.latitude;
      final rLon = restaurant.location?.longitude;

      return Ok([
        Order(
          id: order.id ?? 0,
          status: order.status.toString(),
          from: "$rLat, $rLon",
          to: "$uLat, $uLon",
        )
      ]);
    }, onError: (e) async {
      return resultFromError(e).to<List<Order>>();
    });
  }
}
