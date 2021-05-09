import 'dart:async';
import 'package:yad/core/domain/models/order.dart';
import 'package:yad/core/domain/repos/result.dart';

abstract class OrdersRepo {
  Future<Result<List<Order>>> loadOrders();
}
