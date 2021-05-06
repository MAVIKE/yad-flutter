import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/core/domain/repos/load_dish_list/dish_list_repo.dart';
import 'package:yad/features/dish_list/models/models.dart';

part 'dish_list_event.dart';
part 'dish_list_state.dart';

class DishListBloc extends Bloc<DishListEvent, DishListState> {

  DishListBloc({
    required DishListRepo dishListRepo,
    required int restaurantId,
  }) : _dishListRepo = dishListRepo,
        super(DishListState(restaurantId: RestaurantId(id: restaurantId)));

  final DishListRepo _dishListRepo;

  @override
  Stream<DishListState> mapEventToState(DishListEvent event) async* {
    if (event is CategoryListFetched) {
      yield await _mapCategoryListFetchedToState(state);
    } else if (event is DishListFetched) {
      yield await _mapDishListFetchedToState(event, state);
    }
  }

  // при получении категорий,
  // делается запрос на получение списка блюд первой категории
  Future<DishListState> _mapCategoryListFetchedToState(DishListState state) async {
    try {
      final categories = await _fetchCategories(state.restaurantId.id);
      if (categories.isEmpty) {
        return state.copyWith(status: DishListStatus.failure);
      }
      else {
        final dishes = await _fetchDishes(state.restaurantId.id, categories[0].id);
        if (dishes.isEmpty) {
          return state.copyWith(status: DishListStatus.failure);
        }
        else {
          return state.copyWith(
            status: DishListStatus.success,
            categories: categories,
            dishes: dishes
          );
        }
      }
    } on Exception {
      return state.copyWith(status: DishListStatus.failure);
    }
  }

  Future<DishListState> _mapDishListFetchedToState(DishListFetched event, DishListState state) async {
    try {
      final dishes = await _fetchDishes(state.restaurantId.id, event.categoryId);
      if (dishes.isEmpty) {
        return state.copyWith(status: DishListStatus.failure);
      }
      return state.copyWith(
        status: DishListStatus.success,
        dishes: dishes,
      );
    } on Exception {
      return state.copyWith(status: DishListStatus.failure);
    }
  }

  Future<List<DishCategory>> _fetchCategories(int restaurantId) async {
    return await _dishListRepo.loadCategories(restaurantId: restaurantId);
  }

  Future<List<Dish>> _fetchDishes(int restaurantId, int categoryId) async {
    return await _dishListRepo.loadDishes(restaurantId: restaurantId,
        categoryId: categoryId);
  }


}