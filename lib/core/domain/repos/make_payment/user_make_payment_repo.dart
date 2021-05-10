import 'dart:async';
import 'package:api_client/api_client.dart';
import 'package:yad/features/cart/models/order_item.dart';

import 'package:yad/core/domain/repos/result.dart';
import 'package:dio/dio.dart';

import 'make_payment_repo.dart';

class UserMakePaymentRepository implements MakePaymentRepo {

  final OrdersApi _oApi;

  UserMakePaymentRepository(_api) : _oApi = _api.getOrdersApi();

  @override
  Future<Result<String>> pay(
      {required String cardNumber,
      required String expirationMonth,
      required String expirationYear,
      required String cardHolder,
      required String cvcCvv,
      required List<OrderItem> items}) async {
      int? orderId = -1;
      final input = V1OrderInputBuilder()
      ..restaurantId = items[0].dish.restaurantId;
      final result =  await _oApi.ordersPost(input: input.build()).then((value) {
        final result = resultFromResponse(value);
        orderId = result.value?.id;
        if (orderId == null) {
          return result.to();
        }
        else {
          return Ok(orderId);
        }
      }, onError: (e) => resultFromError(e).to<String>());

      if (result.error != null) {
        return result.to();
      }


      final String strOrderId = orderId.toString();
      for (var item in items) {
        final input = V1OrderItemInputBuilder()
          ..count = item.dishCount
          ..menuItemId = item.dish.id;
        final result = await _oApi.ordersOidItemsPost(oid: strOrderId, input: input.build()).then((value) {
          final result = resultFromResponse(value);
          final itemOrderId = result.value?.id;
          if (itemOrderId == null) {
            return result.to();
          }
          else {
            return Ok('Item added');
          }
        }, onError: (e) => resultFromError(e).to<String>());
        if (result.value != 'Item added') {
          return result.to();
        }
      }
      final updateInput = V1OrderUpdateBuilder()
        ..status = 1;
      return await _oApi.ordersOidPut(oid: strOrderId, input: updateInput.build()).then((value) {
        final statusCode = value.statusCode;
        final response = Response<String>(
          data: 'Error in changing order status',
          statusCode: statusCode,
          requestOptions: value.requestOptions
        );
        final result = resultFromResponse(response);
        if (statusCode != 200) {
          return result.to();
        }
        else {
          return Ok('Order was created');
        }
      }, onError: (e) => resultFromError(e).to<String>());
  }
}
