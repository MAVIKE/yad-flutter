part of 'make_payment_bloc.dart';

abstract class MakePaymentEvent extends Equatable {
  const MakePaymentEvent();

  @override
  List<Object> get props => [];
}

class MakePaymentPayRequested extends MakePaymentEvent {
  const MakePaymentPayRequested(this.cardNumber, this.expirationMonth,
      this.expirationYear, this.cardHolder, this.cvcCvv);

  final String cardNumber;
  final String expirationMonth;
  final String expirationYear;
  final String cardHolder;
  final String cvcCvv;

  @override
  List<Object> get props =>
      [cardNumber, expirationMonth, expirationYear, cardHolder, cvcCvv];
}

class MakePaymentPayApproved extends MakePaymentEvent {}

class MakePaymentPayFailed extends MakePaymentEvent {}
