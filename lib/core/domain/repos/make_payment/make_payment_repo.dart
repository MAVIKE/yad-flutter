import 'dart:async';

abstract class MakePaymentRepo {
  Future<String> pay({
    required String cardNumber,
    required String expirationMonth,
    required String expirationYear,
    required String cardHolder,
    required String cvcCvv
  });

}