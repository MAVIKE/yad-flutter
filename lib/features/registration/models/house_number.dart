import 'package:formz/formz.dart';
import 'dart:core';

enum HouseNumberValidationError {empty, invalid}

class HouseNumber extends FormzInput<String, HouseNumberValidationError> {
  const HouseNumber.pure() : super.pure('');
  const HouseNumber.dirty([String value = '']) : super.dirty(value);

  @override
  HouseNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return HouseNumberValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return HouseNumberValidationError.invalid;
    }
    return null;
  }
}