import 'dart:async';

import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'package:yad/core/domain/repos/result.dart';

abstract class DishListRepo {
  Future<Result<List<DishCategory>>> loadCategories({
    required int restaurantId,
  });

  Future<Result<List<Dish>>> loadDishes({
    required int restaurantId,
    required int categoryId
  });
}