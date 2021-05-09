import 'dart:async';
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:yad/core/domain/repos/result.dart';

import 'auth_repo.dart';

class DeliveryBoyAuthenticationRepository implements AuthRepo {
  final ApiClient _api;
  final CouriersApi _cApi;

  DeliveryBoyAuthenticationRepository(this._api)
      : _cApi = _api.getCouriersApi();

  @override
  Future<Result<String>> signIn({
    required String username,
    required String password,
  }) async {
    final input = V1CourierSignInInputBuilder()
      ..phone = username
      ..password = password;
    try {
      final response = await _cApi.couriersSignInPost(input: input.build());
      final token = response.data?.token;
      if (token != null) {
        _api.setApiKey("CourierAuth", "Bearer $token");
        return Ok(token);
      } else {
        return Err(
            SimpleFailure(response.statusCode ?? 1, "Response data is null"));
      }
    } on DioError catch (e) {
      return Err(SimpleFailure(e.response?.statusCode ?? 1,
          e.response?.data.toString() ?? "Unknown auth error"));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    _api.setApiKey("CourierAuth", "");
    return Result();
  }

  @override
  Future<Result<void>> setToken(String token) async {
    _api.setApiKey("CourierAuth", "Bearer $token");
    return Result();
  }

  String get tokenKey => "YAD DB Auth token";
}
