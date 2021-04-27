// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1TokenResponse extends V1TokenResponse {
  @override
  final String? token;

  factory _$V1TokenResponse([void Function(V1TokenResponseBuilder)? updates]) =>
      (new V1TokenResponseBuilder()..update(updates)).build();

  _$V1TokenResponse._({this.token}) : super._();

  @override
  V1TokenResponse rebuild(void Function(V1TokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1TokenResponseBuilder toBuilder() =>
      new V1TokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1TokenResponse && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1TokenResponse')..add('token', token))
        .toString();
  }
}

class V1TokenResponseBuilder
    implements Builder<V1TokenResponse, V1TokenResponseBuilder> {
  _$V1TokenResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  V1TokenResponseBuilder() {
    V1TokenResponse._initializeBuilder(this);
  }

  V1TokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1TokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1TokenResponse;
  }

  @override
  void update(void Function(V1TokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1TokenResponse build() {
    final _$result = _$v ?? new _$V1TokenResponse._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
