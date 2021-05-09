import 'dart:async';

import 'package:yad/features/cart/models/models.dart';
import 'package:yad/features/dish_list/models/dish.dart';

abstract class CartRepo {
  Future<Cart> loadCart();

  void addDish(Dish dish);

  void dropDish(Dish dish);
}
