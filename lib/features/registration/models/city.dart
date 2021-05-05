import 'package:formz/formz.dart';
import 'dart:core';

enum CityValidationError { empty, invalid }

class City extends FormzInput<String, CityValidationError> {
  const City.pure() : super.pure('');
  const City.dirty([String value = '']) : super.dirty(value);

  @override
  CityValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return CityValidationError.empty;
    } else if (!value.contains(RegExp(r"^[A-Z]{1}[a-z]{1,40}$"))) {
      return CityValidationError.invalid;
    }
    return null;
  }
}
