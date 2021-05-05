import 'package:formz/formz.dart';
import 'dart:core';

enum FlatValidationError {empty, invalid}

class Flat extends FormzInput<String, FlatValidationError> {
  const Flat.pure() : super.pure('');
  const Flat.dirty([String value = '']) : super.dirty(value);

  @override
  FlatValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return FlatValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return FlatValidationError.invalid;
    }
    return null;
  }
}