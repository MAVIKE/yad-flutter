import 'package:yad/core/domain/repos/failure.dart';

class Result<T> {
  T? _value;
  Failure? _error;
  Result({T? value, Failure? error})
      : _value = value,
        _error = error;

  Failure? get error => _error;

  T? get value => _value;
}

class Ok<T> extends Result<T> {
  Ok(T value) : super(value: value);
}

class Err<T> extends Result<T> {
  Err(Failure error) : super(error: error);
}
