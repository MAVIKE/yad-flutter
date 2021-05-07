import 'package:formz/formz.dart';
import 'dart:core';

enum NameValidationError { empty, invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return NameValidationError.empty;
    } else if (!value
        .contains(RegExp(r"^[A-Z]{1}[a-z]{1,14}\s[A-Z]{1}[a-z]{1,14}$"))) {
      return NameValidationError.invalid;
    }
    return null;
  }
}
