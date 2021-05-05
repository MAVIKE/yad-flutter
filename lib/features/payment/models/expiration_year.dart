import 'package:formz/formz.dart';
import 'dart:core';

enum ExpirationYearValidationError { empty, invalid, small, big}

class ExpirationYear extends FormzInput<String, ExpirationYearValidationError> {
  const ExpirationYear.pure() : super.pure('');
  const ExpirationYear.dirty([String value = '']) : super.dirty(value);

  @override
  ExpirationYearValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return ExpirationYearValidationError.empty;
    }
    else {
      int parseValue = int.parse(value);
      if (parseValue is ! int) {
        return ExpirationYearValidationError.invalid;
      }
      else {
        if (parseValue < 21) {
          return ExpirationYearValidationError.small;
        }
        else if (parseValue > 99) {
          return ExpirationYearValidationError.big;
        }
      }
    }
    return null;
  }
}