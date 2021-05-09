import 'package:formz/formz.dart';
import 'dart:core';

enum NameValidationError { empty, invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

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
