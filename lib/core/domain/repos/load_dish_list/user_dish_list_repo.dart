import 'dart:async';
import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'dish_list_repo.dart';

class UserDishListRepository implements DishListRepo {

  // заглушка.
  // заполнял всякой ерундой, чтоб посмотреть, как выглядеть будет
  @override
  Future<List<DishCategory>> loadCategories({
    required int restaurantId,
  }) async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => [DishCategory(id: 1, categoryTitle: 'Бургеры'),
            DishCategory(id: 2, categoryTitle: 'Пицца'),
            DishCategory(id: 3, categoryTitle: 'Салаты'),
            DishCategory(id: 4, categoryTitle: 'Суши'),
            DishCategory(id: 5, categoryTitle: 'Wok')],
    );
  }

  @override
  Future<List<Dish>> loadDishes({
    required int restaurantId,
    required int categoryId
  }) async {
    if (categoryId == 1) {
      return await Future.delayed(
        const Duration(milliseconds: 300),
            () => [Dish(id: 1, title: 'Smoking beaf',
            description: 'Traditional Ukranian dish, '
                'Soup with meat anvegetables',
            price: 12.00, categoryId: 1),
          Dish(id: 2, title: 'Smoking beaf2',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 13.00, categoryId: 1),
          Dish(id: 3, title: 'Smoking beaf3',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 14.00, categoryId: 1),
          Dish(id: 4, title: 'Smoking beaf4',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 15.00, categoryId: 1),
          Dish(id: 5, title: 'Smoking beaf5',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 16.00, categoryId: 1),
          Dish(id: 6, title: 'Smoking beaf6',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 17.00, categoryId: 1),
          Dish(id: 7, title: 'Smoking beaf7',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 18.00, categoryId: 1),]);
    }
    else if (categoryId == 2) {
      return await Future.delayed(const Duration(milliseconds: 300),
          () => [Dish(id: 1, title: 'Pizza',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              price: 12.00, categoryId: 2),
            Dish(id: 1, title: 'Pizza2',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 13.00, categoryId: 2),
          ]
      );
    }
    else if (categoryId == 3) {
      return await Future.delayed(const Duration(milliseconds: 300),
              () => [Dish(id: 1, title: 'Salat',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 12.00, categoryId: 3),
            Dish(id: 1, title: 'Salat2',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 13.00, categoryId: 3),
            Dish(id: 1, title: 'Salat3',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 14.00, categoryId: 3),
          ]
      );
    }
    else if (categoryId == 4) {
      return await Future.delayed(const Duration(milliseconds: 300),
              () => [Dish(id: 1, title: 'Sushi',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 15.00, categoryId: 4),
          ]
      );
    }
    else {
      return await Future.delayed(const Duration(milliseconds: 300),
              () => [Dish(id: 1, title: 'Wok',
                description: 'Traditional Ukranian dish, '
                    'Soup with meat anvegetables',
                price: 14.00, categoryId: 5),
          ]
      );
    }

  }
}