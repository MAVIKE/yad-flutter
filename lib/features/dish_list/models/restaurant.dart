import 'package:equatable/equatable.dart';

class RestaurantId extends Equatable {
  const RestaurantId({required this.id});

  final int id;

  @override
  List<Object> get props => [id];
}
