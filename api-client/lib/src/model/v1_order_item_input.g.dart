// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_order_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1OrderItemInput extends V1OrderItemInput {
  @override
  final int? count;
  @override
  final int? menuItemId;

  factory _$V1OrderItemInput(
          [void Function(V1OrderItemInputBuilder)? updates]) =>
      (new V1OrderItemInputBuilder()..update(updates)).build();

  _$V1OrderItemInput._({this.count, this.menuItemId}) : super._();

  @override
  V1OrderItemInput rebuild(void Function(V1OrderItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1OrderItemInputBuilder toBuilder() =>
      new V1OrderItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1OrderItemInput &&
        count == other.count &&
        menuItemId == other.menuItemId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), menuItemId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1OrderItemInput')
          ..add('count', count)
          ..add('menuItemId', menuItemId))
        .toString();
  }
}

class V1OrderItemInputBuilder
    implements Builder<V1OrderItemInput, V1OrderItemInputBuilder> {
  _$V1OrderItemInput? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _menuItemId;
  int? get menuItemId => _$this._menuItemId;
  set menuItemId(int? menuItemId) => _$this._menuItemId = menuItemId;

  V1OrderItemInputBuilder() {
    V1OrderItemInput._initializeBuilder(this);
  }

  V1OrderItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _menuItemId = $v.menuItemId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1OrderItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1OrderItemInput;
  }

  @override
  void update(void Function(V1OrderItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1OrderItemInput build() {
    final _$result =
        _$v ?? new _$V1OrderItemInput._(count: count, menuItemId: menuItemId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
