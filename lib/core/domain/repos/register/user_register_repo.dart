import 'package:yad/core/domain/repos/result.dart';

import 'register_repo.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';

class UserRegisterRepo extends RegisterRepo {
  final UsersApi _uApi;

  UserRegisterRepo(ApiClient api) : _uApi = api.getUsersApi();

  @override
  Future<Result<void>> register({
    required String name,
    required String phoneNumber,
    required String password,
    required String email,
  }) async {
    final address = V1LocationInputBuilder()
      ..latitude = 1
      ..longitude = 1;
    final input = V1UserSignUpInputBuilder()
      ..name = name
      ..address = address
      ..phone = phoneNumber
      ..email = email
      ..password = password;
    try {
      await _uApi.usersSignUpPost(input: input.build());
    } on DioError catch (e) {
      final code = e.response?.statusCode ?? 1;
      if (code >= 200 && code < 300) {
        print(code);
        return Result();
      }
      return Err(SimpleFailure(
          code, e.response?.data.toString() ?? "Unknown auth error"));
    }
    return Result();
  }
}
