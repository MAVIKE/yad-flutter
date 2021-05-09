import 'dart:async';
import 'package:yad/features/restaurant_list/models/restaurant.dart';

import 'restaurant_list_repo.dart';
import 'package:api_client/api_client.dart';
import 'package:yad/core/domain/repos/result.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:dio/dio.dart';

class RemoteRestaurantListRepository implements RestaurantListRepo {
  final RestaurantsApi _rApi;

  RemoteRestaurantListRepository(_api) : _rApi = _api.getRestaurantsApi();

  List<Restaurant> convertDomainItemToRestaurantList(final data) {
    List<Restaurant> res = [];
    for (var data_i in data) {
      final restaurant = Restaurant(id: data_i.id, name: data_i.name);
      res.add(restaurant);
    }
    return res;
  }

  @override
  Future<Result<List<Restaurant>>> loadRestaurants() async {
    try {
      final response = await _rApi.restaurantsGet();
      final firstRestaurant = response.data?[0].id;
      if (firstRestaurant != null) {
        return Ok(convertDomainItemToRestaurantList(response.data));
      } else {
        return Err(
            SimpleFailure(response.statusCode ?? 1, "Response data is null"));
      }
    } on DioError catch (e) {
      return Err(SimpleFailure(e.response?.statusCode ?? 1,
          e.response?.data.toString() ?? "Unknown loadRestaurants error"));
    }
  }
}
