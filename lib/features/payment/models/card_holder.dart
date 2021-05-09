import 'package:formz/formz.dart';
import 'dart:core';

enum CardHolderValidationError { empty, invalid }

class CardHolder extends FormzInput<String, CardHolderValidationError> {
  const CardHolder.pure() : super.pure('');
  const CardHolder.dirty([String value = '']) : super.dirty(value);

  @override
  CardHolderValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return CardHolderValidationError.empty;
    } else if (!value.contains(RegExp(r"^[A-Z]+\s[A-Z]+"))) {
      return CardHolderValidationError.invalid;
    }
    return null;
  }
}
