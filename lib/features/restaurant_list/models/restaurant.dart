import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Restaurant extends Equatable {
  const Restaurant({required this.id, required this.name, this.photo});

  final int id;
  final String name;
  final ImageProvider? photo;

  @override
  List<Object> get props => [id, name];
}
