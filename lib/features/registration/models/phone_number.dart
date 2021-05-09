import 'package:formz/formz.dart';
import 'dart:core';

enum PhoneNumberValidationError { empty, short, long, invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  String? get errorString {
    if (status == FormzInputStatus.pure) {
      return null;
    }
    if (error == null) {
      return null;
    }
    final name = this.runtimeType.toString();
    return "$name is invalid";
  }

  @override
  PhoneNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return PhoneNumberValidationError.empty;
    } else if (value.length > 11) {
      return PhoneNumberValidationError.long;
    } else if (value.length < 11) {
      return PhoneNumberValidationError.short;
    } else if (!value.contains(RegExp(r"^8[0-9]{10}"))) {
      return PhoneNumberValidationError.invalid;
    }
    return null;
  }
}
