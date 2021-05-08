import 'dart:async';
import 'package:yad/features/restaurant_list/models/restaurant.dart';

import 'restaurant_list_repo.dart';

class RemoteRestaurantListRepository implements RestaurantListRepo {

  @override
  Future<List<Restaurant>> loadRestaurants() async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => [],
    );
  }
}