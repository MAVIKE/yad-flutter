part of 'payment_bloc.dart';

abstract class PaymentEvent extends Equatable {
  const PaymentEvent();

  @override
  List<Object> get props => [];
}

class PaymentCardNumberChanged extends PaymentEvent {
  const PaymentCardNumberChanged(this.cardNumber);

  final String cardNumber;

  @override
  List<Object> get props => [cardNumber];
}

class PaymentExpirationMonthChanged extends PaymentEvent {
  const PaymentExpirationMonthChanged(this.expirationMonth);

  final String expirationMonth;

  @override
  List<Object> get props => [expirationMonth];
}

class PaymentExpirationYearChanged extends PaymentEvent {
  const PaymentExpirationYearChanged(this.expirationYear);

  final String expirationYear;

  @override
  List<Object> get props => [expirationYear];
}

class PaymentCardHolderChanged extends PaymentEvent {
  const PaymentCardHolderChanged(this.cardHolder);

  final String cardHolder;

  @override
  List<Object> get props => [cardHolder];
}

class PaymentCvcCvvChanged extends PaymentEvent {
  const PaymentCvcCvvChanged(this.cvcCvv);

  final String cvcCvv;

  @override
  List<Object> get props => [cvcCvv];
}

class PaymentSubmitted extends PaymentEvent {
  const PaymentSubmitted();
}