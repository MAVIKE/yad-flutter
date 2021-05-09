import 'work_status_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

class MockWorkStatusRepo extends WorkStatusRepo {
  @override
  Future<Result<void>> update({required int workStatus}) async {
    return Future.delayed(Duration(seconds: 1), () {
      return Result();
    });
  }
}
