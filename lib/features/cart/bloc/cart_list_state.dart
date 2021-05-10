part of 'cart_list_bloc.dart';

enum CartListStatus { initial, success, failure }

class CartListState extends Equatable {
  const CartListState(
      {this.status = CartListStatus.initial,
      this.cart = const Cart(items: <OrderItem>[])});

  final CartListStatus status;
  final Cart cart;

  CartListState copyWith({
    CartListStatus? status,
    Cart? cart,
  }) {
    return CartListState(
      status: status ?? this.status,
      cart: cart ?? this.cart,
    );
  }

  @override
  String toString() {
    return '''CartListState { 
    status: $status, posts: ${cart.items.length} }''';
  }

  @override
  List<Object> get props => [status, cart];
}
