import 'package:equatable/equatable.dart';
import 'package:yad/features/dish_list/models/models.dart';

class OrderItem extends Equatable {
  const OrderItem({required this.dish, this.dishCount = 0});

  final int dishCount;
  final Dish dish;

  @override
  List<Object> get props => [dish, dishCount];
}