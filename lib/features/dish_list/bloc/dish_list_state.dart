part of 'dish_list_bloc.dart';

enum DishListStatus { initial, success, failure }

class DishListState extends Equatable {
  const DishListState({
    required this.restaurantId,
    this.status = DishListStatus.initial,
    this.dishes = const <Dish>[],
    this.categories = const <DishCategory>[],
  });

  final DishListStatus status;
  final RestaurantId restaurantId;
  final List<Dish> dishes;
  final List<DishCategory> categories;

  DishListState copyWith(
      {RestaurantId? restaurantId,
      DishListStatus? status,
      List<Dish>? dishes,
      List<DishCategory>? categories}) {
    return DishListState(
      restaurantId: restaurantId ?? this.restaurantId,
      status: status ?? this.status,
      dishes: dishes ?? this.dishes,
      categories: categories ?? this.categories,
    );
  }

  @override
  String toString() {
    return '''DishListState {restaurantId:$restaurantId, 
    status: $status, posts: ${dishes.length} }''';
  }

  @override
  List<Object> get props => [restaurantId, status, dishes, categories];
}
