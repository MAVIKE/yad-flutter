import 'dart:async';

abstract class AuthRepo {
  Future<String> logIn({
    required String username,
    required String password,
  });

  Future<void> logOut();
}
