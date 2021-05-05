part of 'dish_list_bloc.dart';


abstract class DishListEvent extends Equatable {

  const DishListEvent();

  @override
  List<Object> get props => [];
}

class CategoryListFetched extends DishListEvent {}

class DishListFetched extends DishListEvent {
  const DishListFetched(this.categoryId);

  final int categoryId;

  @override
  List<Object> get props => [categoryId];
}