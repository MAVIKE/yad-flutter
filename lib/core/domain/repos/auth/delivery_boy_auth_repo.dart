import 'dart:async';
import 'package:api_client/api_client.dart';
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
    return await _cApi.couriersSignInPost(input: input.build()).then((value) {
      final result = resultFromResponse(value);
      final token = result.value?.token;
      if (token == null) {
        return result.to();
      }
      _api.setApiKey("CourierAuth", "Bearer $token");
      return Ok(token);
    }, onError: (e) => resultFromError(e).to<String>());
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

  @override
  Future<Result<int>> currentId() async {
    return await _cApi.couriersCurrentGet().then((value) async {
      final result = resultFromResponse(value);
      final id = result.value;
      if (id == null) {
        return result.to<int>();
      }
      return Ok(id.id ?? 0);
    }, onError: (e) async {
      return resultFromError(e).to<int>();
    });
  }
}
