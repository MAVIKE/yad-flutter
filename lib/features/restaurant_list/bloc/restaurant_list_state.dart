part of 'restaurant_list_bloc.dart';

enum RestaurantListStatus { initial, success, failure }

class RestaurantListState extends Equatable {
  const RestaurantListState({
    this.status = RestaurantListStatus.initial,
    this.restaurants = const <Restaurant>[],
  });

  final RestaurantListStatus status;
  final List<Restaurant> restaurants;

  RestaurantListState copyWith(
      {RestaurantListStatus? status, List<Restaurant>? restaurants}) {
    return RestaurantListState(
      status: status ?? this.status,
      restaurants: restaurants ?? this.restaurants,
    );
  }

  @override
  String toString() {
    return '''RestaurantListState {status: $status, posts: ${restaurants.length} }''';
  }

  @override
  List<Object> get props => [status, restaurants];
}
