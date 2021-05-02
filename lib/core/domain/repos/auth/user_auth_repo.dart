import 'dart:async';
import 'auth_repo.dart';

class UserAuthenticationRepository implements AuthRepo {
  @override
  Future<String> logIn({
    required String username,
    required String password,
  }) async {
    return await Future.delayed(
      const Duration(milliseconds: 300),
      () => '',
    );
  }

  @override
  Future<void> logOut() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () {},
    );
  }
}
