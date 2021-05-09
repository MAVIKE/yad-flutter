import 'package:formz/formz.dart';
import 'dart:core';

enum Password1ValidationError { empty, invalid }

class Password extends FormzInput<String, Password1ValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

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
