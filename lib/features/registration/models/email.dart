import 'package:formz/formz.dart';
import 'dart:core';

enum EmailValidationError { empty, invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

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
  EmailValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return EmailValidationError.empty;
    } else if (!value.contains(RegExp(r'^[^@]+@[^@]+\.[^@]+$'))) {
      return EmailValidationError.invalid;
    }
    return null;
  }
}
