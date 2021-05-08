import 'dart:async';

import 'package:yad/features/restaurant_list/models/restaurant.dart';

abstract class RestaurantListRepo {

  Future<List<Restaurant>> loadRestaurants();
}
