part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}
/*
class MakePaymentPayRequested extends MakePaymentEvent {
  const MakePaymentPayRequested(this.cardNumber, this.expirationMonth,
      this.expirationYear, this.cardHolder, this.cvcCvv);

  final String cardNumber;
  final String expirationMonth;
  final String expirationYear;
  final String cardHolder;
  final String cvcCvv;

  @override
  List<Object> get props => [cardNumber, expirationMonth, expirationYear,
    cardHolder, cvcCvv];
}

class MakePaymentPayApproved extends MakePaymentEvent {}

class MakePaymentPayFailed extends MakePaymentEvent {}
*/
