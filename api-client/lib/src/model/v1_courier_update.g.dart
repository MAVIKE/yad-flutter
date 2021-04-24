// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_courier_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CourierUpdate extends V1CourierUpdate {
  @override
  final V1LocationInput? address;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final int? workingStatus;

  factory _$V1CourierUpdate([void Function(V1CourierUpdateBuilder)? updates]) =>
      (new V1CourierUpdateBuilder()..update(updates)).build();

  _$V1CourierUpdate._(
      {this.address, this.email, this.name, this.password, this.workingStatus})
      : super._();

  @override
  V1CourierUpdate rebuild(void Function(V1CourierUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CourierUpdateBuilder toBuilder() =>
      new V1CourierUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CourierUpdate &&
        address == other.address &&
        email == other.email &&
        name == other.name &&
        password == other.password &&
        workingStatus == other.workingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, address.hashCode), email.hashCode), name.hashCode),
            password.hashCode),
        workingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1CourierUpdate')
          ..add('address', address)
          ..add('email', email)
          ..add('name', name)
          ..add('password', password)
          ..add('workingStatus', workingStatus))
        .toString();
  }
}

class V1CourierUpdateBuilder
    implements Builder<V1CourierUpdate, V1CourierUpdateBuilder> {
  _$V1CourierUpdate? _$v;

  V1LocationInputBuilder? _address;
  V1LocationInputBuilder get address =>
      _$this._address ??= new V1LocationInputBuilder();
  set address(V1LocationInputBuilder? address) => _$this._address = address;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

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

  V1CourierUpdateBuilder() {
    V1CourierUpdate._initializeBuilder(this);
  }

  V1CourierUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _email = $v.email;
      _name = $v.name;
      _password = $v.password;
      _workingStatus = $v.workingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CourierUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CourierUpdate;
  }

  @override
  void update(void Function(V1CourierUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1CourierUpdate build() {
    _$V1CourierUpdate _$result;
    try {
      _$result = _$v ??
          new _$V1CourierUpdate._(
              address: _address?.build(),
              email: email,
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
            'V1CourierUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
