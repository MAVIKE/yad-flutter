// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_courier_sign_in_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CourierSignInInput extends V1CourierSignInInput {
  @override
  final String? password;
  @override
  final String? phone;

  factory _$V1CourierSignInInput(
          [void Function(V1CourierSignInInputBuilder)? updates]) =>
      (new V1CourierSignInInputBuilder()..update(updates)).build();

  _$V1CourierSignInInput._({this.password, this.phone}) : super._();

  @override
  V1CourierSignInInput rebuild(
          void Function(V1CourierSignInInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CourierSignInInputBuilder toBuilder() =>
      new V1CourierSignInInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CourierSignInInput &&
        password == other.password &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, password.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1CourierSignInInput')
          ..add('password', password)
          ..add('phone', phone))
        .toString();
  }
}

class V1CourierSignInInputBuilder
    implements Builder<V1CourierSignInInput, V1CourierSignInInputBuilder> {
  _$V1CourierSignInInput? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  V1CourierSignInInputBuilder() {
    V1CourierSignInInput._initializeBuilder(this);
  }

  V1CourierSignInInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CourierSignInInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CourierSignInInput;
  }

  @override
  void update(void Function(V1CourierSignInInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1CourierSignInInput build() {
    final _$result =
        _$v ?? new _$V1CourierSignInInput._(password: password, phone: phone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
