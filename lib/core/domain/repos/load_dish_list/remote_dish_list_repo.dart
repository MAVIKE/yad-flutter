import 'dart:async';
import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'dish_list_repo.dart';

class RemoteDishListRepository implements DishListRepo {

  // заглушка.
  // заполнял всякой ерундой, чтоб посмотреть, как выглядеть будет
  @override
  Future<List<DishCategory>> loadCategories({
    required int restaurantId,
  }) async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => [],
    );
  }

  @override
  Future<List<Dish>> loadDishes({
    required int restaurantId,
    required int categoryId
  }) async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => [],
    );
  }
}