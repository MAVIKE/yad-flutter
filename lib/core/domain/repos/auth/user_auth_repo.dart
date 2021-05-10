import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

import 'auth_repo.dart';
import 'package:api_client/api_client.dart';

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
    return await _uApi.usersSignInPost(input: input.build()).then((value) {
      final result = resultFromResponse(value);
      final token = result.value?.token;
      if (token == null) {
        return result.to();
      }
      _api.setApiKey("UserAuth", "Bearer $token");
      return Ok(token);
    }, onError: (e) => resultFromError(e).to<String>());
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

  @override
  Future<Result<int>> currentId() async {
    return await _uApi.usersCurrentGet().then((value) async {
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

  String get tokenKey => "YAD User Auth token";
}
