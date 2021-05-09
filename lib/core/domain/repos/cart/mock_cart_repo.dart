import 'dart:async';
import 'package:yad/features/cart/models/cart.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'cart_repo.dart';

class MockCartRepo implements CartRepo {
  @override
  Future<Cart> loadCart() async {
    return await Future.delayed(
        const Duration(milliseconds: 200),
        () => Cart(dishes: [
              Dish(
                  id: 1,
                  title: 'Smoking beaf',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 12.00,
                  categoryId: 1),
              Dish(
                  id: 2,
                  title: 'Smoking beaf2',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 13.00,
                  categoryId: 1),
              Dish(
                  id: 3,
                  title: 'Smoking beaf3',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 14.00,
                  categoryId: 1),
              Dish(
                  id: 4,
                  title: 'Smoking beaf4',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 15.00,
                  categoryId: 1),
              Dish(
                  id: 4,
                  title: 'Smoking beaf5',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 15.00,
                  categoryId: 1),
              Dish(
                  id: 4,
                  title: 'Smoking beaf6',
                  description: 'Traditional Ukranian dish, '
                      'Soup with meat anvegetables',
                  price: 15.00,
                  categoryId: 1),
            ]));
  }
}
