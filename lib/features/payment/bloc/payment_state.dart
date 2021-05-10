part of 'payment_bloc.dart';

class PaymentState extends Equatable {
  const PaymentState({
    this.status = FormzStatus.pure,
    this.cardNumber = const CardNumber.pure(),
    this.expirationMonth = const ExpirationMonth.pure(),
    this.expirationYear = const ExpirationYear.pure(),
    this.cardHolder = const CardHolder.pure(),
    this.cvcCvv = const CvcCvv.pure(),
    required this.items
  });

  final FormzStatus status;
  final CardNumber cardNumber;
  final ExpirationMonth expirationMonth;
  final ExpirationYear expirationYear;
  final CardHolder cardHolder;
  final CvcCvv cvcCvv;
  final List<OrderItem> items;

  PaymentState copyWith({
    FormzStatus? status,
    CardNumber? cardNumber,
    ExpirationMonth? expirationMonth,
    ExpirationYear? expirationYear,
    CardHolder? cardHolder,
    CvcCvv? cvcCvv,
  }) {
    return PaymentState(
      status: status ?? this.status,
      cardNumber: cardNumber ?? this.cardNumber,
      expirationMonth: expirationMonth ?? this.expirationMonth,
      expirationYear: expirationYear ?? this.expirationYear,
      cardHolder: cardHolder ?? this.cardHolder,
      cvcCvv: cvcCvv ?? this.cvcCvv,
      items: items
    );
  }

  @override
  List<Object> get props =>
      [status, cardNumber, expirationMonth, expirationYear, cardHolder, cvcCvv,
        items];
}
