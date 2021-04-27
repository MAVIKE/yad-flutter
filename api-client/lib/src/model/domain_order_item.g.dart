// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainOrderItem extends DomainOrderItem {
  @override
  final int? count;
  @override
  final int? id;
  @override
  final int? menuItemId;
  @override
  final int? orderId;

  factory _$DomainOrderItem([void Function(DomainOrderItemBuilder)? updates]) =>
      (new DomainOrderItemBuilder()..update(updates)).build();

  _$DomainOrderItem._({this.count, this.id, this.menuItemId, this.orderId})
      : super._();

  @override
  DomainOrderItem rebuild(void Function(DomainOrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainOrderItemBuilder toBuilder() =>
      new DomainOrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainOrderItem &&
        count == other.count &&
        id == other.id &&
        menuItemId == other.menuItemId &&
        orderId == other.orderId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), id.hashCode), menuItemId.hashCode),
        orderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainOrderItem')
          ..add('count', count)
          ..add('id', id)
          ..add('menuItemId', menuItemId)
          ..add('orderId', orderId))
        .toString();
  }
}

class DomainOrderItemBuilder
    implements Builder<DomainOrderItem, DomainOrderItemBuilder> {
  _$DomainOrderItem? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _menuItemId;
  int? get menuItemId => _$this._menuItemId;
  set menuItemId(int? menuItemId) => _$this._menuItemId = menuItemId;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  DomainOrderItemBuilder() {
    DomainOrderItem._initializeBuilder(this);
  }

  DomainOrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _id = $v.id;
      _menuItemId = $v.menuItemId;
      _orderId = $v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainOrderItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainOrderItem;
  }

  @override
  void update(void Function(DomainOrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainOrderItem build() {
    final _$result = _$v ??
        new _$DomainOrderItem._(
            count: count, id: id, menuItemId: menuItemId, orderId: orderId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
