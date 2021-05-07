import 'dart:async';

abstract class RegisterRepo {
  Future<String> register(
      {required String name,
      required String phoneNumber,
      required String password1,
      required String password2,
      required String city,
      required String street,
      required String houseNumber,
      required String building,
      required String floor,
      required String flat,
      required String entrance});
}
