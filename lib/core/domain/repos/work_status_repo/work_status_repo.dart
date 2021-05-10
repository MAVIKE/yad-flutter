import 'dart:async';
import 'package:yad/core/domain/repos/result.dart';

abstract class WorkStatusRepo {
  Future<Result<void>> update({required int workStatus});
  Future<Result<int>> current();
}
