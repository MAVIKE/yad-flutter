import 'package:formz/formz.dart';
import 'dart:core';

enum HouseNumberValidationError { empty, invalid }

class HouseNumber extends FormzInput<String, HouseNumberValidationError> {
  const HouseNumber.pure() : super.pure('');
  const HouseNumber.dirty([String value = '']) : super.dirty(value);

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
  HouseNumberValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return HouseNumberValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return HouseNumberValidationError.invalid;
    }
    return null;
  }
}
