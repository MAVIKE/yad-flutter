import 'package:equatable/equatable.dart';
import 'package:yad/features/cart/cart.dart';

class Cart extends Equatable {
  const Cart({required this.items});
  final List<OrderItem> items;

  double get totalPrice =>
      items.fold(0, (value, element) => value + element.dishCount * element.dish.price);

  @override
  List<Object> get props => [items];
}
