// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainOrder extends DomainOrder {
  @override
  final int? courierId;
  @override
  final int? deliveryPrice;
  @override
  final int? id;
  @override
  final String? paid;
  @override
  final int? restaurantId;
  @override
  final int? status;
  @override
  final int? totalPrice;
  @override
  final int? userId;

  factory _$DomainOrder([void Function(DomainOrderBuilder)? updates]) =>
      (new DomainOrderBuilder()..update(updates)).build();

  _$DomainOrder._(
      {this.courierId,
      this.deliveryPrice,
      this.id,
      this.paid,
      this.restaurantId,
      this.status,
      this.totalPrice,
      this.userId})
      : super._();

  @override
  DomainOrder rebuild(void Function(DomainOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainOrderBuilder toBuilder() => new DomainOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainOrder &&
        courierId == other.courierId &&
        deliveryPrice == other.deliveryPrice &&
        id == other.id &&
        paid == other.paid &&
        restaurantId == other.restaurantId &&
        status == other.status &&
        totalPrice == other.totalPrice &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, courierId.hashCode),
                                deliveryPrice.hashCode),
                            id.hashCode),
                        paid.hashCode),
                    restaurantId.hashCode),
                status.hashCode),
            totalPrice.hashCode),
        userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainOrder')
          ..add('courierId', courierId)
          ..add('deliveryPrice', deliveryPrice)
          ..add('id', id)
          ..add('paid', paid)
          ..add('restaurantId', restaurantId)
          ..add('status', status)
          ..add('totalPrice', totalPrice)
          ..add('userId', userId))
        .toString();
  }
}

class DomainOrderBuilder implements Builder<DomainOrder, DomainOrderBuilder> {
  _$DomainOrder? _$v;

  int? _courierId;
  int? get courierId => _$this._courierId;
  set courierId(int? courierId) => _$this._courierId = courierId;

  int? _deliveryPrice;
  int? get deliveryPrice => _$this._deliveryPrice;
  set deliveryPrice(int? deliveryPrice) =>
      _$this._deliveryPrice = deliveryPrice;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _paid;
  String? get paid => _$this._paid;
  set paid(String? paid) => _$this._paid = paid;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  DomainOrderBuilder() {
    DomainOrder._initializeBuilder(this);
  }

  DomainOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courierId = $v.courierId;
      _deliveryPrice = $v.deliveryPrice;
      _id = $v.id;
      _paid = $v.paid;
      _restaurantId = $v.restaurantId;
      _status = $v.status;
      _totalPrice = $v.totalPrice;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainOrder;
  }

  @override
  void update(void Function(DomainOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainOrder build() {
    final _$result = _$v ??
        new _$DomainOrder._(
            courierId: courierId,
            deliveryPrice: deliveryPrice,
            id: id,
            paid: paid,
            restaurantId: restaurantId,
            status: status,
            totalPrice: totalPrice,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
