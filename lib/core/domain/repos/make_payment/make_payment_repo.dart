import 'dart:async';

import 'package:yad/features/cart/models/order_item.dart';

import '../result.dart';

abstract class MakePaymentRepo {
  Future<Result<String>> pay(
      {required String cardNumber,
      required String expirationMonth,
      required String expirationYear,
      required String cardHolder,
      required String cvcCvv,
        required List<OrderItem> items});
}
