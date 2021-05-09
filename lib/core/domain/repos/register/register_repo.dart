import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

abstract class RegisterRepo {
  Future<Result<void>> register({
    required String name,
    required String phoneNumber,
    required String password,
    required String email,
  });
}
