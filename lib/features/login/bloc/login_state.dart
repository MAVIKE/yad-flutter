part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.phoneNumber = const PhoneNumber.pure(),
    this.password = const Password.pure(),
  });

  final FormzStatus status;
  final PhoneNumber phoneNumber;
  final Password password;

  LoginState copyWith({
    FormzStatus? status,
    PhoneNumber? phoneNumber,
    Password? password,
  }) {
    final newPhoneNumber = phoneNumber ?? this.phoneNumber;
    final newPassword = password ?? this.password;
    return LoginState(
      status: status ?? Formz.validate([newPhoneNumber, newPassword]),
      phoneNumber: newPhoneNumber,
      password: newPassword,
    );
  }

  @override
  List<Object> get props => [status, phoneNumber, password];
}
