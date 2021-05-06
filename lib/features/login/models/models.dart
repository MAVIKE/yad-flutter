export 'password.dart';
export 'username.dart';

import 'package:formz/formz.dart';
import 'package:yad/features/login/login.dart';

class LoginInput with FormzMixin {
  LoginInput(
      {PhoneNumber phoneNumber = const PhoneNumber.pure(),
      Password password = const Password.pure()})
      : _password = password,
        _phoneNumber = phoneNumber;

  final PhoneNumber _phoneNumber;
  final Password _password;

  @override
  List<FormzInput> get inputs => [_phoneNumber, _password];
}
