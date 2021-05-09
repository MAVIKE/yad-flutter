import 'dart:async';
import 'package:api_client/api_client.dart';
import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/models/dish.dart';

import 'package:yad/core/domain/repos/result.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:dio/dio.dart';

import 'dish_list_repo.dart';

class RemoteDishListRepository implements DishListRepo {
  //final ApiClient _api;
  final CategoriesApi _cApi;

  RemoteDishListRepository(_api) : _cApi = _api.getCategoriesApi();

  List<DishCategory> convertDomainCategoryToDishListCategory(final data) {
    List<DishCategory> res = [];
    for (var data_i in data) {
      final category = DishCategory(id: data_i.id, categoryTitle: data_i.title);
      res.add(category);
    }
    return res;
  }

  List<Dish> convertDomainMenuItemToDishList(final data, int categoryId) {
    List<Dish> res = [];
    for (var data_i in data) {
      final dish = Dish(
          id: data_i.id,
          title: data_i.title,
          description: data_i.description,
          price: data_i.price.toDouble(),
          categoryId: categoryId);
      res.add(dish);
    }
    return res;
  }

  // заглушка.
  // заполнял всякой ерундой, чтоб посмотреть, как выглядеть будет
  @override
  Future<Result<List<DishCategory>>> loadCategories({
    required int restaurantId,
  }) async {
    try {
      final String rId = restaurantId.toString();
      final response = await _cApi.restaurantsRidCategoriesGet(
        rid: rId,
      );
      final firstCategory = response.data?[0].restaurantId;
      if (firstCategory != null) {
        return Ok(convertDomainCategoryToDishListCategory(response.data));
      } else {
        return Err(
            SimpleFailure(response.statusCode ?? 1, "Response data is null"));
      }
    } on DioError catch (e) {
      return Err(SimpleFailure(e.response?.statusCode ?? 1,
          e.response?.data.toString() ?? "Unknown loadCategories error"));
    }
  }

  @override
  Future<Result<List<Dish>>> loadDishes(
      {required int restaurantId, required int categoryId}) async {
    try {
      final String rId = restaurantId.toString();
      final String cId = categoryId.toString();
      final response =
          await _cApi.restaurantsRidCategoriesCidMenuGet(rid: rId, cid: cId);
      final firstMenu = response.data?[0].id;
      if (firstMenu != null) {
        return Ok(convertDomainMenuItemToDishList(response.data, categoryId));
      } else {
        return Err(
            SimpleFailure(response.statusCode ?? 1, "Response data is null"));
      }
    } on DioError catch (e) {
      return Err(SimpleFailure(e.response?.statusCode ?? 1,
          e.response?.data.toString() ?? "Unknown loadDishes error"));
    }
  }
}
