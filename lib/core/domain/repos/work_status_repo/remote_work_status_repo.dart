import 'work_status_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';
import 'package:api_client/api_client.dart';

class RemoteWorkStatusRepo extends WorkStatusRepo {
  final ApiClient api;

  RemoteWorkStatusRepo(this.api);

  @override
  Future<Result<void>> update({required int workStatus}) async {
    return Result();
  }
}
