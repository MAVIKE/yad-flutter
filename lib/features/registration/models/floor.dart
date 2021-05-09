import 'package:formz/formz.dart';
import 'dart:core';

enum FloorValidationError { empty, invalid }

class Floor extends FormzInput<String, FloorValidationError> {
  const Floor.pure() : super.pure('');
  const Floor.dirty([String value = '']) : super.dirty(value);

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
  FloorValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return FloorValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return FloorValidationError.invalid;
    }
    return null;
  }
}
