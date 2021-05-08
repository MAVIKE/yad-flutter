import 'dart:async';
import 'package:yad/features/restaurant_list/models/restaurant.dart';

import 'restaurant_list_repo.dart';

class MockRestaurantListRepository implements RestaurantListRepo {

  @override
  Future<List<Restaurant>> loadRestaurants() async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => [
            Restaurant(id: 1, name: "Macdonald's"),
            Restaurant(id: 2, name: "KFC"),
            Restaurant(id: 3, name: "Burger King"),
            Restaurant(id: 4, name: "Frank Burger"),
            Restaurant(id: 5, name: "Kroshka Kartoshka"),
            ]);
  }
}