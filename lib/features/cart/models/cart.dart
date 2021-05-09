import 'package:equatable/equatable.dart';
import 'package:yad/features/dish_list/models/dish.dart';

class Cart extends Equatable {
  const Cart({required this.dishes});
  final List<Dish> dishes;

  double get price =>
      dishes.map((e) => e.price).reduce((value, element) => value + element);

  @override
  List<Object> get props => [dishes];
}
