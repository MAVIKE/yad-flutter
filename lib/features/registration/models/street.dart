import 'package:formz/formz.dart';
import 'dart:core';

enum StreetValidationError { empty, invalid }

class Street extends FormzInput<String, StreetValidationError> {
  const Street.pure() : super.pure('');
  const Street.dirty([String value = '']) : super.dirty(value);

  @override
  StreetValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return StreetValidationError.empty;
    } else if (!value.contains(RegExp(r"^[A-Z]{3,25}$"))) {
      return StreetValidationError.invalid;
    }
    return null;
  }
}
