import 'package:formz/formz.dart';
import 'dart:core';

enum ExpirationMonthValidationError { empty, invalid, small, big }

class ExpirationMonth
    extends FormzInput<String, ExpirationMonthValidationError> {
  const ExpirationMonth.pure() : super.pure('');
  const ExpirationMonth.dirty([String value = '']) : super.dirty(value);

  @override
  ExpirationMonthValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return ExpirationMonthValidationError.empty;
    } else {
      int parseValue = int.parse(value);
      if (parseValue is! int) {
        return ExpirationMonthValidationError.invalid;
      } else {
        if (parseValue < 1) {
          return ExpirationMonthValidationError.small;
        } else if (parseValue > 12) {
          return ExpirationMonthValidationError.big;
        }
      }
    }
    return null;
  }
}
