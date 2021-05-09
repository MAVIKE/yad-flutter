import 'package:yad/core/domain/models/order.dart';

import 'orders_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';
import 'package:api_client/api_client.dart';

class CourierOrdersRepo extends OrdersRepo {
  final ApiClient api;

  CourierOrdersRepo(this.api);

  @override
  Future<Result<List<Order>>> loadOrders() async {
    return Ok([]);
  }
}
