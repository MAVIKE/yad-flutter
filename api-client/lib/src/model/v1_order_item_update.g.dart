// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_order_item_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1OrderItemUpdate extends V1OrderItemUpdate {
  @override
  final int? count;

  factory _$V1OrderItemUpdate(
          [void Function(V1OrderItemUpdateBuilder)? updates]) =>
      (new V1OrderItemUpdateBuilder()..update(updates)).build();

  _$V1OrderItemUpdate._({this.count}) : super._();

  @override
  V1OrderItemUpdate rebuild(void Function(V1OrderItemUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1OrderItemUpdateBuilder toBuilder() =>
      new V1OrderItemUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1OrderItemUpdate && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1OrderItemUpdate')
          ..add('count', count))
        .toString();
  }
}

class V1OrderItemUpdateBuilder
    implements Builder<V1OrderItemUpdate, V1OrderItemUpdateBuilder> {
  _$V1OrderItemUpdate? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  V1OrderItemUpdateBuilder() {
    V1OrderItemUpdate._initializeBuilder(this);
  }

  V1OrderItemUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1OrderItemUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1OrderItemUpdate;
  }

  @override
  void update(void Function(V1OrderItemUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1OrderItemUpdate build() {
    final _$result = _$v ?? new _$V1OrderItemUpdate._(count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
