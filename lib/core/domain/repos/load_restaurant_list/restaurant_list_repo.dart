import 'dart:async';

import 'package:yad/features/restaurant_list/models/restaurant.dart';
import 'package:yad/core/domain/repos/result.dart';

abstract class RestaurantListRepo {
  Future<Result<List<Restaurant>>> loadRestaurants();
}
