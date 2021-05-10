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
      print("Fetch id failed $idResult");
      return idResult.to();
    }
    return await _ordersApi.couriersCidOrdersGet(cid: id.toString()).then(
        (value) async {
      final result = resultFromResponse(value);
      final order = result.value;
      if (order == null) {
        return result.to();
      }
      final userResult = await _usersApi
          .usersUidGet(uid: order.userId.toString())
          .then((value) => resultFromResponse(value),
              onError: (e) => resultFromError(e).to<DomainUser>());
      final user = userResult.value;
      if (user == null) {
        print("Fetch user failed: $userResult");
      }
      final uLat = user?.location?.latitude;
      final uLon = user?.location?.latitude;
      final uAddress =
          (uLat == null || uLon == null) ? "Unknown address" : "$uLat, $uLon";
      final restaurantResult = await _restaurantsApi
          .restaurantsRidGet(rid: order.restaurantId.toString())
          .then((value) => resultFromResponse(value),
              onError: (e) => resultFromError(e).to<DomainRestaurant>());
      final restaurant = restaurantResult.value;
      if (restaurant == null) {
        print("Fetch restaurant failed: $restaurantResult");
      }
      final rLat = restaurant?.location?.latitude;
      final rLon = restaurant?.location?.longitude;
      final rAddress =
          (rLat == null || rLon == null) ? "Unknown address" : "$rLat, $rLon";

      return Ok([
        Order(
          id: order.id ?? 0,
          statusId: order.status ?? 0,
          from: rAddress,
          to: uAddress,
        )
      ]);
    }, onError: (e) async {
      return resultFromError(e).to<List<Order>>();
    });
  }
}
