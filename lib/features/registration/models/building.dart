import 'package:formz/formz.dart';
import 'dart:core';

enum BuildingValidationError {empty, invalid}

class Building extends FormzInput<String, BuildingValidationError> {
  const Building.pure() : super.pure('');
  const Building.dirty([String value = '']) : super.dirty(value);

  @override
  BuildingValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return BuildingValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return BuildingValidationError.invalid;
    }
    return null;
  }
}