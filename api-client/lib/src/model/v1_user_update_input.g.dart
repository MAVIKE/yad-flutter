// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_update_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1UserUpdateInput extends V1UserUpdateInput {
  @override
  final V1LocationInput? address;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? password;

  factory _$V1UserUpdateInput(
          [void Function(V1UserUpdateInputBuilder)? updates]) =>
      (new V1UserUpdateInputBuilder()..update(updates)).build();

  _$V1UserUpdateInput._({this.address, this.email, this.name, this.password})
      : super._();

  @override
  V1UserUpdateInput rebuild(void Function(V1UserUpdateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1UserUpdateInputBuilder toBuilder() =>
      new V1UserUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1UserUpdateInput &&
        address == other.address &&
        email == other.email &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, address.hashCode), email.hashCode), name.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1UserUpdateInput')
          ..add('address', address)
          ..add('email', email)
          ..add('name', name)
          ..add('password', password))
        .toString();
  }
}

class V1UserUpdateInputBuilder
    implements Builder<V1UserUpdateInput, V1UserUpdateInputBuilder> {
  _$V1UserUpdateInput? _$v;

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

  V1UserUpdateInputBuilder() {
    V1UserUpdateInput._initializeBuilder(this);
  }

  V1UserUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _email = $v.email;
      _name = $v.name;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1UserUpdateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1UserUpdateInput;
  }

  @override
  void update(void Function(V1UserUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1UserUpdateInput build() {
    _$V1UserUpdateInput _$result;
    try {
      _$result = _$v ??
          new _$V1UserUpdateInput._(
              address: _address?.build(),
              email: email,
              name: name,
              password: password);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'V1UserUpdateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
