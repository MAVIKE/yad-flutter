import 'dart:async';

import 'package:bloc/bloc.dart';
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
        super(DishListState(restaurantId: RestaurantId(id: restaurantId))) {
    this.add(CategoryListRequested());
  }

  final DishListRepo _dishListRepo;

  @override
  Stream<DishListState> mapEventToState(DishListEvent event) async* {
    if (event is CategoryListRequested) {
      yield* _mapCategoryListFetchedToState(state);
    } else if (event is DishListRequestedByCategoryId) {
      yield await _mapDishListFetchedToState(event, state);
    }
  }

  // при получении категорий,
  // делается запрос на получение списка блюд первой категории
  Stream<DishListState> _mapCategoryListFetchedToState(DishListState state) async* {
    try {
      final categories = await _fetchCategories(state.restaurantId.id);
      if (categories.isEmpty) {
        yield state.copyWith(status: DishListStatus.failure);
      }
      else {
        // если удался запрос, возвращаем вначале список категорий,
        // а потом уже дозапрашиваем список блюд для первой категории
        yield state.copyWith(
            status: DishListStatus.success,
            categories: categories
        );
        final dishes = await _fetchDishes(state.restaurantId.id, categories[0].id);
        if (dishes.isEmpty) {
          yield state.copyWith(status: DishListStatus.failure);
        }
        else {
          yield state.copyWith(
            status: DishListStatus.success,
            categories: categories,
            dishes: dishes
          );
        }
      }
    } on Exception {
      yield state.copyWith(status: DishListStatus.failure);
    }
  }

  Future<DishListState> _mapDishListFetchedToState(DishListRequestedByCategoryId event, DishListState state) async {
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
    final data = await _dishListRepo.loadCategories(restaurantId: restaurantId);
    final categories = data.value;
    return categories == null ? [] : categories;
  }

  Future<List<Dish>> _fetchDishes(int restaurantId, int categoryId) async {
    final data = await _dishListRepo.loadDishes(restaurantId: restaurantId,
        categoryId: categoryId);
    final dishes = data.value;
    return dishes == null ? [] : dishes;
  }


}