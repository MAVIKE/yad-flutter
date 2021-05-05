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

  Future<DishListState> _mapCategoryListFetchedToState(DishListState state) async {
    try {
      final categories = await _fetchCategories(state.restaurantId.id);
      return categories.isEmpty
          ? state.copyWith(
          status: DishListStatus.failure)
          : state.copyWith(
        status: DishListStatus.success,
        categories: List.of(state.categories)..addAll(categories),
      );
    } on Exception {
      return state.copyWith(status: DishListStatus.failure);
    }
  }

  Future<DishListState> _mapDishListFetchedToState(DishListFetched event, DishListState state) async {
    try {
      if (state.status == DishListStatus.initial) {
        final dishes = await _fetchDishes(state.restaurantId.id, event.categoryId);
        return state.copyWith(
          status: DishListStatus.success,
          dishes: dishes,
        );
      }
      if (state.dishes.isEmpty) {
        final dishes = await _fetchDishes(state.restaurantId.id, event.categoryId);
        return state.copyWith(
          status: DishListStatus.success,
          dishes: dishes,
        );
      }
      else {
        return state;
      }
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