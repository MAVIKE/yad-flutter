import 'package:formz/formz.dart';
import 'dart:core';

enum Password1ValidationError {empty, invalid}

class Password1 extends FormzInput<String, Password1ValidationError> {
  const Password1.pure() : super.pure('');
  const Password1.dirty([String value = '']) : super.dirty(value);

  @override
  Password1ValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return Password1ValidationError.empty;
    } else if (value.length < 8) {
      return Password1ValidationError.invalid;
    }
    return null;
  }
}