import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Dish extends Equatable {
  const Dish({required this.id, required this.title, required this.description,
    required this.price, this.photo, required this.categoryId,
    required this.restaurantId});

  final int id;
  final String title;
  final String description;
  final double price;
  final ImageProvider? photo;
  final int categoryId;
  final int restaurantId;

  @override
  List<Object> get props => [id, title, description, price, categoryId,
    restaurantId];
}