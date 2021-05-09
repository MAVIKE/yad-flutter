import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/core/domain/repos/cart/cart_repo.dart';
import 'package:yad/features/cart/models/models.dart';
import 'package:yad/features/dish_list/models/models.dart';

part 'cart_list_event.dart';
part 'cart_list_state.dart';

class CartListBloc extends Bloc<CartListEvent, CartListState> {
  CartListBloc({
    required CartRepo cartRepo,
  })   : _cartRepo = cartRepo,
        super(CartListState()) {
    this.add(CartListRequested());
  }

  final CartRepo _cartRepo;

  @override
  Stream<CartListState> mapEventToState(CartListEvent event) async* {
    if (event is CartListRequested) {
      yield* _mapCartListRequestedToState(state);
    }
  }

  Stream<CartListState> _mapCartListRequestedToState(
      CartListState state) async* {
    try {
      final cart = await _fetchCart();
      if (cart.dishes.isEmpty) {
        yield state.copyWith(status: CartListStatus.failure);
      } else {
        yield state.copyWith(status: CartListStatus.success, cart: cart);
      }
    } on Exception {
      yield state.copyWith(status: CartListStatus.failure);
    }
  }

  Future<Cart> _fetchCart() async {
    return await _cartRepo.loadCart();
  }
}
