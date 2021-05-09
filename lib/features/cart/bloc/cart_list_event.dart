part of 'cart_list_bloc.dart';

abstract class CartListEvent extends Equatable {
  const CartListEvent();

  @override
  List<Object> get props => [];
}

class CartListRequested extends CartListEvent {}
