// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_id_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1IdResponse extends V1IdResponse {
  @override
  final int? id;

  factory _$V1IdResponse([void Function(V1IdResponseBuilder)? updates]) =>
      (new V1IdResponseBuilder()..update(updates)).build();

  _$V1IdResponse._({this.id}) : super._();

  @override
  V1IdResponse rebuild(void Function(V1IdResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1IdResponseBuilder toBuilder() => new V1IdResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1IdResponse && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1IdResponse')..add('id', id))
        .toString();
  }
}

class V1IdResponseBuilder
    implements Builder<V1IdResponse, V1IdResponseBuilder> {
  _$V1IdResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  V1IdResponseBuilder() {
    V1IdResponse._initializeBuilder(this);
  }

  V1IdResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1IdResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1IdResponse;
  }

  @override
  void update(void Function(V1IdResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1IdResponse build() {
    final _$result = _$v ?? new _$V1IdResponse._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
