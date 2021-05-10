import 'package:yad/core/domain/repos/auth/auth_repo.dart';

import 'work_status_repo.dart';

import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';
import 'package:api_client/api_client.dart';

class RemoteWorkStatusRepo extends WorkStatusRepo {
  final CouriersApi _couriersApi;
  final AuthRepo _authRepo;

  RemoteWorkStatusRepo(ApiClient api, this._authRepo)
      : _couriersApi = api.getCouriersApi();

  @override
  Future<Result<void>> update({required int workStatus}) async {
    final idResult = await _authRepo.currentId();
    print(idResult);
    final id = idResult.value;
    if (id == null) {
      print("Fetch id error: $idResult");
      return idResult.to();
    }
    final address = V1LocationInputBuilder()
      ..latitude = 1
      ..longitude = 1;
    final input = V1CourierUpdateBuilder()
      ..workingStatus = workStatus
      ..address = address;
    final result = await _couriersApi
        .couriersCidPut(cid: id.toString(), input: input.build())
        .then((value) async {
      return resultFromResponse(value);
    }, onError: (e) {
      return resultFromError(e).to<V1Response>();
    });
    if (result.error == null) {
      print("Change work status error: $result");
    }
    return result.to();
  }

  @override
  Future<Result<int>> current() async {
    final idResult = await _authRepo.currentId();
    final id = idResult.value;
    if (id == null) {
      return idResult.to();
    }
    final courierResult = await _couriersApi
        .couriersCidGet(cid: id.toString())
        .then((value) async {
      return resultFromResponse(value);
    }, onError: (e) {
      return resultFromError(e).to<DomainCourier>();
    });
    final courier = courierResult.value;
    if (courier == null) {
      print("Fetch courier error: $courierResult");
      return courierResult.to();
    }
    return Ok(courier.workingStatus ?? 0);
  }
}
