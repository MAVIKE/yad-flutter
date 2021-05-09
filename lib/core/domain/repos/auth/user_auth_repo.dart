import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

import 'auth_repo.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';

class UserAuthenticationRepository implements AuthRepo {
  final ApiClient _api;
  final UsersApi _uApi;

  UserAuthenticationRepository(this._api) : _uApi = _api.getUsersApi();

  @override
  Future<Result<String>> signIn({
    required String username,
    required String password,
  }) async {
    final input = V1UserSignInInputBuilder()
      ..phone = username
      ..password = password;
    try {
      final response = await _uApi.usersSignInPost(input: input.build());
      final token = response.data?.token;
      if (token != null) {
        _api.setApiKey("UserAuth", "Bearer $token");
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
    _api.setApiKey("UserAuth", "");
    return Result();
  }

  @override
  Future<Result<void>> setToken(String token) async {
    _api.setApiKey("UserAuth", "Bearer $token");
    return Result();
  }

  String get tokenKey => "YAD User Auth token";
}
