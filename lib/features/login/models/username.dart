import 'package:formz/formz.dart';
import 'dart:core';

enum PhoneNumberValidationError { empty, short, long, invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  String? errorString() {
    switch (error) {
      case PhoneNumberValidationError.empty:
        return "Phone is empty";
      case PhoneNumberValidationError.short:
        return "Phone too short";
      case PhoneNumberValidationError.long:
        return "Phone too long";
      case PhoneNumberValidationError.invalid:
        return "This is not phone number";
      default:
        return null;
    }
  }

  @override
  PhoneNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return PhoneNumberValidationError.empty;
    } else if (value.length < 11) {
      return PhoneNumberValidationError.short;
    } else if (value.length > 11) {
      return PhoneNumberValidationError.long;
    } else if (value.contains(RegExp(r"\D"))) {
      return PhoneNumberValidationError.invalid;
    }
    return null;
  }
}
