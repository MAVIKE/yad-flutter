import 'package:formz/formz.dart';
import 'dart:core';

enum EntranceValidationError { empty, invalid }

class Entrance extends FormzInput<String, EntranceValidationError> {
  const Entrance.pure() : super.pure('');
  const Entrance.dirty([String value = '']) : super.dirty(value);

  @override
  EntranceValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return EntranceValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1}$"))) {
      return EntranceValidationError.invalid;
    }
    return null;
  }
}
