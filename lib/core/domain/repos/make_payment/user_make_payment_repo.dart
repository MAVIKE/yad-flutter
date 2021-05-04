import 'dart:async';
import 'make_payment_repo.dart';

class UserMakePaymentRepository implements MakePaymentRepo {
  @override
  Future<String> pay({
    required String cardNumber,
    required String expirationMonth,
    required String expirationYear,
    required String cardHolder,
    required String cvcCvv
  }) async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
          () => 'Approved',
    );
  }
}