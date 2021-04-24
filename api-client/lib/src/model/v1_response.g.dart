// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1Response extends V1Response {
  @override
  final String? message;

  factory _$V1Response([void Function(V1ResponseBuilder)? updates]) =>
      (new V1ResponseBuilder()..update(updates)).build();

  _$V1Response._({this.message}) : super._();

  @override
  V1Response rebuild(void Function(V1ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1ResponseBuilder toBuilder() => new V1ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1Response && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1Response')..add('message', message))
        .toString();
  }
}

class V1ResponseBuilder implements Builder<V1Response, V1ResponseBuilder> {
  _$V1Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V1ResponseBuilder() {
    V1Response._initializeBuilder(this);
  }

  V1ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1Response;
  }

  @override
  void update(void Function(V1ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1Response build() {
    final _$result = _$v ?? new _$V1Response._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
