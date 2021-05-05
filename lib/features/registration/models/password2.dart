import 'package:formz/formz.dart';
import 'dart:core';

enum Password2ValidationError {empty, invalid}

class Password2 extends FormzInput<String, Password2ValidationError> {
  const Password2.pure() : super.pure('');
  const Password2.dirty([String value = '']) : super.dirty(value);

  @override
  Password2ValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return Password2ValidationError.empty;
    } else if (value.length < 8) {
      return Password2ValidationError.invalid;
    }
    return null;
  }
}