// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_order_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1OrderUpdate extends V1OrderUpdate {
  @override
  final int? status;

  factory _$V1OrderUpdate([void Function(V1OrderUpdateBuilder)? updates]) =>
      (new V1OrderUpdateBuilder()..update(updates)).build();

  _$V1OrderUpdate._({this.status}) : super._();

  @override
  V1OrderUpdate rebuild(void Function(V1OrderUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1OrderUpdateBuilder toBuilder() => new V1OrderUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1OrderUpdate && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1OrderUpdate')..add('status', status))
        .toString();
  }
}

class V1OrderUpdateBuilder
    implements Builder<V1OrderUpdate, V1OrderUpdateBuilder> {
  _$V1OrderUpdate? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  V1OrderUpdateBuilder() {
    V1OrderUpdate._initializeBuilder(this);
  }

  V1OrderUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1OrderUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1OrderUpdate;
  }

  @override
  void update(void Function(V1OrderUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1OrderUpdate build() {
    final _$result = _$v ?? new _$V1OrderUpdate._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
