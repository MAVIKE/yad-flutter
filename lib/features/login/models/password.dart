import 'package:formz/formz.dart';

enum PasswordValidationError { empty, short, simple }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (value.length < 8) {
      return PasswordValidationError.short;
    } else if (value.toLowerCase() == value || value.toUpperCase() == value) {
      return PasswordValidationError.simple;
    }
    return null;
  }
}
