part of 'dish_list_bloc.dart';

abstract class DishListEvent extends Equatable {
  const DishListEvent();

  @override
  List<Object> get props => [];
}

class CategoryListRequested extends DishListEvent {}

class DishListRequestedByCategoryId extends DishListEvent {
  const DishListRequestedByCategoryId(this.categoryId);

  final int categoryId;

  @override
  List<Object> get props => [categoryId];
}
