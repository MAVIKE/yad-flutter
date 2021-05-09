import 'package:equatable/equatable.dart';

class DishCategory extends Equatable {
  const DishCategory({required this.id, required this.categoryTitle});

  final int id;
  final String categoryTitle;

  @override
  List<Object> get props => [id, categoryTitle];
}
