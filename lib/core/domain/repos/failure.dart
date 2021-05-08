import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object> get props => [];

  String get reason;
  int get code;
}

class ServerFailure extends Failure {
  @override
  String get reason => "Server Failure";

  @override
  int get code => 2;
}

class UnknownFailure extends Failure {
  @override
  String get reason => "Unknown failure";

  @override
  int get code => 1;
}

class SimpleFailure extends Failure {
  SimpleFailure(this._code, this._reason);

  final String _reason;
  final int _code;

  @override
  String get reason => _reason;

  @override
  int get code => _code;

  @override
  List<Object> get props => [_code, _reason];
}
