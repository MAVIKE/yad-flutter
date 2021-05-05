part of 'make_payment_bloc.dart';

enum MakePaymentStatus {
  unknown,
  payApproved,
  payFailed,
  paymentInProgress
}

class MakePaymentState extends Equatable {
  const MakePaymentState._({
    this.status = MakePaymentStatus.unknown,
  });

  const MakePaymentState.unknown() : this._();

  const MakePaymentState.payApproved()
      : this._(status: MakePaymentStatus.payApproved);

  const MakePaymentState.payFailed()
      : this._(status: MakePaymentStatus.payFailed);

  const MakePaymentState.paymentInProgress()
      : this._(status: MakePaymentStatus.paymentInProgress);

  final MakePaymentStatus status;

  @override
  List<Object> get props => [status];
}
