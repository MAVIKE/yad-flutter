// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_restaurant_update_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1RestaurantUpdateInput extends V1RestaurantUpdateInput {
  @override
  final V1LocationInput? address;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final int? workingStatus;

  factory _$V1RestaurantUpdateInput(
          [void Function(V1RestaurantUpdateInputBuilder)? updates]) =>
      (new V1RestaurantUpdateInputBuilder()..update(updates)).build();

  _$V1RestaurantUpdateInput._(
      {this.address, this.name, this.password, this.workingStatus})
      : super._();

  @override
  V1RestaurantUpdateInput rebuild(
          void Function(V1RestaurantUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1RestaurantUpdateInputBuilder toBuilder() =>
      new V1RestaurantUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1RestaurantUpdateInput &&
        address == other.address &&
        name == other.name &&
        password == other.password &&
        workingStatus == other.workingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, address.hashCode), name.hashCode), password.hashCode),
        workingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1RestaurantUpdateInput')
          ..add('address', address)
          ..add('name', name)
          ..add('password', password)
          ..add('workingStatus', workingStatus))
        .toString();
  }
}

class V1RestaurantUpdateInputBuilder
    implements
        Builder<V1RestaurantUpdateInput, V1RestaurantUpdateInputBuilder> {
  _$V1RestaurantUpdateInput? _$v;

  V1LocationInputBuilder? _address;
  V1LocationInputBuilder get address =>
      _$this._address ??= new V1LocationInputBuilder();
  set address(V1LocationInputBuilder? address) => _$this._address = address;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  int? _workingStatus;
  int? get workingStatus => _$this._workingStatus;
  set workingStatus(int? workingStatus) =>
      _$this._workingStatus = workingStatus;

  V1RestaurantUpdateInputBuilder() {
    V1RestaurantUpdateInput._initializeBuilder(this);
  }

  V1RestaurantUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _name = $v.name;
      _password = $v.password;
      _workingStatus = $v.workingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1RestaurantUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1RestaurantUpdateInput;
  }

  @override
  void update(void Function(V1RestaurantUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1RestaurantUpdateInput build() {
    _$V1RestaurantUpdateInput _$result;
    try {
      _$result = _$v ??
          new _$V1RestaurantUpdateInput._(
              address: _address?.build(),
              name: name,
              password: password,
              workingStatus: workingStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'V1RestaurantUpdateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
