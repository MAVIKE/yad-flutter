import 'dart:math';

import 'package:yad/core/domain/models/order.dart';
import 'package:yad/core/domain/repos/failure.dart';

import 'orders_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

class MockOrdersRepo extends OrdersRepo {
  @override
  Future<Result<List<Order>>> loadOrders() async {
    final rnd = Random.secure();
    switch (rnd.nextInt(3)) {
      case 0:
        return Ok([
          Order(
            id: 1275,
            status: "Cooking",
            from: "Moscow",
            to: "Petersburg",
          )
        ]);
      case 1:
        return Ok([
          Order(
            id: 1275,
            status: "Cooking",
            from: "Moscow",
            to: "Petersburg",
          ),
          Order(
            id: 1276,
            status: "Cooking",
            from: "Moscow",
            to: "Petersburg",
          )
        ]);
      default:
        return Err(SimpleFailure(1, "Fail"));
    }
  }
}
