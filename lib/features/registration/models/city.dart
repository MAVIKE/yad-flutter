import 'package:formz/formz.dart';
import 'dart:core';

enum CityValidationError { empty, invalid }

class City extends FormzInput<String, CityValidationError> {
  const City.pure() : super.pure('');
  const City.dirty([String value = '']) : super.dirty(value);

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
  CityValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return CityValidationError.empty;
    } else if (!value.contains(RegExp(r"^[A-Z]{1}[a-z]{1,40}$"))) {
      return CityValidationError.invalid;
    }
    return null;
  }
}
