import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/features/cart/models/models.dart';
import 'package:yad/features/dish_list/models/models.dart';

part 'cart_list_event.dart';
part 'cart_list_state.dart';

class CartListBloc extends Bloc<CartListEvent, CartListState> {
  CartListBloc() : super(CartListState()) {
    this.add(CartListRequested());
  }


  @override
  Stream<CartListState> mapEventToState(CartListEvent event) async* {
    if (event is CartListRequested) {
      yield* _mapCartListRequestedToState(state);
    }
    else if (event is CartAddDish) {
      yield* _mapCartAddDish(state, event);
    }
    else if (event is CartDropDish) {
      yield* _mapCartDropDish(state, event);
    }
    else if (event is CartIncrementDishCount) {
      yield* _mapCartIncrementDishCount(state, event);
    }
    else if (event is CartDecrementDishCount) {
      yield* _mapCartDecrementDishCount(state, event);
    }
  }

  Stream<CartListState> _mapCartAddDish(CartListState state, CartAddDish event)
  async* {
    OrderItem item = OrderItem(dish: event.dish);
    List<OrderItem> items = List<OrderItem>.from(state.cart.items);
    items.add(item);
    yield state.copyWith(status: CartListStatus.success,
        cart: Cart(items: items));
  }

  OrderItem? findDishWithSameId(List<OrderItem> items, int dishId) {
    for (var item in items) {
      if (item.dish.id == dishId) {
        return item;
      }
    }
    return null;
  }

  Stream<CartListState> _mapCartDropDish(CartListState state, CartDropDish event)
  async* {
    List<OrderItem> items = List<OrderItem>.from(state.cart.items);

    // находим dish с тем же id и возвращаем orderItem
    OrderItem? item = findDishWithSameId(items, event.dish.id);
    if (item != null) {
      items.remove(item);
      yield state.copyWith(status: CartListStatus.success,
          cart: Cart(items: items));
    }
    else {
      yield state.copyWith(status: CartListStatus.failure);
    }
  }

  Stream<CartListState> _mapCartIncrementDishCount(CartListState state, CartIncrementDishCount event)
  async* {
    List<OrderItem> items = List<OrderItem>.from(state.cart.items);
    // находим dish с тем же id и возвращаем orderItem
    OrderItem? item = findDishWithSameId(items, event.dish.id);
    if (item != null) {
      items.remove(item);
      items.add(OrderItem(dish: item.dish, dishCount: item.dishCount + 1));
      yield state.copyWith(status: CartListStatus.success,
          cart: Cart(items: items));
    }
    else {
      yield state.copyWith(status: CartListStatus.failure);
    }
  }

  Stream<CartListState> _mapCartDecrementDishCount(CartListState state, CartDecrementDishCount event)
  async* {
    List<OrderItem> items = List<OrderItem>.from(state.cart.items);
    // находим dish с тем же id и возвращаем orderItem
    OrderItem? item = findDishWithSameId(items, event.dish.id);
    if (item != null) {
      items.remove(item);
      items.add(OrderItem(dish: item.dish, dishCount: item.dishCount - 1));
      yield state.copyWith(status: CartListStatus.success,
          cart: Cart(items: items));
    }
    else {
      yield state.copyWith(status: CartListStatus.failure);
    }
  }

  Stream<CartListState> _mapCartListRequestedToState(
      CartListState state) async* {
      if (state.cart.items.isEmpty) {
        yield state.copyWith(status: CartListStatus.failure);
      } else {
        yield state.copyWith(status: CartListStatus.success);
      }
  }
}
