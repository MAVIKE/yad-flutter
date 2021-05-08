part of 'register_bloc.dart';

enum RegisterStatus {
  unknown,
  registerApproved,
  registerFailed,
  registerInProgress
}

class RegisterState extends Equatable {
  const RegisterState._({
    this.status = RegisterStatus.unknown,
  });

  const RegisterState.unknown() : this._();

  const RegisterState.payApproved()
      : this._(status: RegisterStatus.registerApproved);

  const RegisterState.payFailed()
      : this._(status: RegisterStatus.registerFailed);

  const RegisterState.paymentInProgress()
      : this._(status: RegisterStatus.registerInProgress);

  final RegisterStatus status;

  @override
  List<Object> get props => [status];
}
