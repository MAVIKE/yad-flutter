import 'package:formz/formz.dart';
import 'dart:core';

enum CvcCvvValidationError {empty, invalid, small, big}

class CvcCvv extends FormzInput<String, CvcCvvValidationError> {
  const CvcCvv.pure() : super.pure('');
  const CvcCvv.dirty([String value = '']) : super.dirty(value);

  @override
  CvcCvvValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return CvcCvvValidationError.empty;
    } else {
      int parseValue = int.parse(value);
      if (parseValue is ! int) {
        return CvcCvvValidationError.invalid;
      }
      else {
        if (parseValue < 100) {
          return CvcCvvValidationError.small;
        }
        else if (parseValue > 999) {
          return CvcCvvValidationError.big;
        }
      }
    }
    return null;
  }
}
