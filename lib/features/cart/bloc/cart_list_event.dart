part of 'cart_list_bloc.dart';

abstract class CartListEvent extends Equatable {
  const CartListEvent();

  @override
  List<Object> get props => [];
}

class CartListRequested extends CartListEvent {}

class CartAddDish extends CartListEvent {
  const CartAddDish(this.dish);

  final Dish dish;

  @override
  List<Object> get props => [dish];
}

class CartDropDish extends CartListEvent {
  const CartDropDish(this.dish);

  final Dish dish;

  @override
  List<Object> get props => [dish];
}