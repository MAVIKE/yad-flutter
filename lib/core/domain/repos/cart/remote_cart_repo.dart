import 'dart:async';
import 'package:yad/features/cart/models/cart.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'cart_repo.dart';

class RemoteCartRepo implements CartRepo {

  final List<Dish> dishes = [];

  @override
  Future<Cart> loadCart() async {
    return await Future.delayed(
        const Duration(milliseconds: 200),
            () => Cart(dishes: dishes));
  }

  void addDish(Dish dish) {
    dishes.add(dish);
  }

  void dropDish(Dish dish) {
    dishes.remove(dish);
  }

}