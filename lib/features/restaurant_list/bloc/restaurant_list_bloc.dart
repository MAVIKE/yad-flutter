import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/core/domain/repos/load_restaurant_list/restaurant_list_repo.dart';
import 'package:yad/features/restaurant_list/models/models.dart';

part 'restaurant_list_event.dart';
part 'restaurant_list_state.dart';

class RestaurantListBloc
    extends Bloc<RestaurantListEvent, RestaurantListState> {
  RestaurantListBloc({
    required RestaurantListRepo restaurantListRepo,
  })   : _restaurantListRepo = restaurantListRepo,
        super(RestaurantListState());

  final RestaurantListRepo _restaurantListRepo;

  @override
  Stream<RestaurantListState> mapEventToState(
      RestaurantListEvent event) async* {
    if (event is RestaurantListRequested) {
      yield await _mapRestaurantListFetchedToState(event, state);
    }
  }

  Future<RestaurantListState> _mapRestaurantListFetchedToState(
      RestaurantListRequested event, RestaurantListState state) async {
    try {
      final restaurants = await _fetchRestaurants();
      if (restaurants.isEmpty) {
        return state.copyWith(status: RestaurantListStatus.failure);
      }
      return state.copyWith(
        status: RestaurantListStatus.success,
        restaurants: restaurants,
      );
    } on Exception {
      return state.copyWith(status: RestaurantListStatus.failure);
    }
  }

  Future<List<Restaurant>> _fetchRestaurants() async {
    return await _restaurantListRepo.loadRestaurants();
  }
}
