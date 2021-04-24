// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_courier_sign_up_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CourierSignUpInput extends V1CourierSignUpInput {
  @override
  final V1LocationInput? address;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final int? workingStatus;

  factory _$V1CourierSignUpInput(
          [void Function(V1CourierSignUpInputBuilder)? updates]) =>
      (new V1CourierSignUpInputBuilder()..update(updates)).build();

  _$V1CourierSignUpInput._(
      {this.address,
      this.email,
      this.name,
      this.password,
      this.phone,
      this.workingStatus})
      : super._();

  @override
  V1CourierSignUpInput rebuild(
          void Function(V1CourierSignUpInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CourierSignUpInputBuilder toBuilder() =>
      new V1CourierSignUpInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CourierSignUpInput &&
        address == other.address &&
        email == other.email &&
        name == other.name &&
        password == other.password &&
        phone == other.phone &&
        workingStatus == other.workingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, address.hashCode), email.hashCode),
                    name.hashCode),
                password.hashCode),
            phone.hashCode),
        workingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1CourierSignUpInput')
          ..add('address', address)
          ..add('email', email)
          ..add('name', name)
          ..add('password', password)
          ..add('phone', phone)
          ..add('workingStatus', workingStatus))
        .toString();
  }
}

class V1CourierSignUpInputBuilder
    implements Builder<V1CourierSignUpInput, V1CourierSignUpInputBuilder> {
  _$V1CourierSignUpInput? _$v;

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

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  int? _workingStatus;
  int? get workingStatus => _$this._workingStatus;
  set workingStatus(int? workingStatus) =>
      _$this._workingStatus = workingStatus;

  V1CourierSignUpInputBuilder() {
    V1CourierSignUpInput._initializeBuilder(this);
  }

  V1CourierSignUpInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _email = $v.email;
      _name = $v.name;
      _password = $v.password;
      _phone = $v.phone;
      _workingStatus = $v.workingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CourierSignUpInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CourierSignUpInput;
  }

  @override
  void update(void Function(V1CourierSignUpInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1CourierSignUpInput build() {
    _$V1CourierSignUpInput _$result;
    try {
      _$result = _$v ??
          new _$V1CourierSignUpInput._(
              address: _address?.build(),
              email: email,
              name: name,
              password: password,
              phone: phone,
              workingStatus: workingStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'V1CourierSignUpInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
