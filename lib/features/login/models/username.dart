import 'package:formz/formz.dart';
import 'dart:core';

enum PhoneNumberValidationError { empty, short, invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return PhoneNumberValidationError.empty;
    } else if (value.length < 13) {
      return PhoneNumberValidationError.short;
    } else if (value.contains(RegExp(r"\D"))) {
      return PhoneNumberValidationError.invalid;
    }
    return null;
  }
}
