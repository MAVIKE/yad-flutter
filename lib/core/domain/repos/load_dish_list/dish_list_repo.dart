import 'dart:async';

import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/models/dish.dart';

abstract class DishListRepo {
  Future<List<DishCategory>> loadCategories({
    required int restaurantId,
  });

  Future<List<Dish>> loadDishes({
    required int restaurantId,
    required int categoryId
  });
}