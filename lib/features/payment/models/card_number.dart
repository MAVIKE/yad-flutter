import 'package:formz/formz.dart';
import 'dart:core';

enum CardNumberValidationError { empty, short, long, invalid}

class CardNumber extends FormzInput<String, CardNumberValidationError> {
  const CardNumber.pure() : super.pure('');
  const CardNumber.dirty([String value = '']) : super.dirty(value);

  @override
  CardNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return CardNumberValidationError.empty;
    } else if (value.length < 16) {
      return CardNumberValidationError.short;
    } else if (value.length > 16) {
      return CardNumberValidationError.long;
    } else if (int.parse(value) is ! int) {
      return CardNumberValidationError.invalid;
    }
    return null;
  }
}