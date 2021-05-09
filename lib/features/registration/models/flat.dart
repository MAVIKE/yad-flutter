import 'package:formz/formz.dart';
import 'dart:core';

enum FlatValidationError { empty, invalid }

class Flat extends FormzInput<String, FlatValidationError> {
  const Flat.pure() : super.pure('');
  const Flat.dirty([String value = '']) : super.dirty(value);

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
  FlatValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return FlatValidationError.empty;
    } else if (!value.contains(RegExp(r"^[0-9]{1,3}$"))) {
      return FlatValidationError.invalid;
    }
    return null;
  }
}
