// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_sign_in_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1UserSignInInput extends V1UserSignInInput {
  @override
  final String? password;
  @override
  final String? phone;

  factory _$V1UserSignInInput(
          [void Function(V1UserSignInInputBuilder)? updates]) =>
      (new V1UserSignInInputBuilder()..update(updates)).build();

  _$V1UserSignInInput._({this.password, this.phone}) : super._();

  @override
  V1UserSignInInput rebuild(void Function(V1UserSignInInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1UserSignInInputBuilder toBuilder() =>
      new V1UserSignInInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1UserSignInInput &&
        password == other.password &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, password.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1UserSignInInput')
          ..add('password', password)
          ..add('phone', phone))
        .toString();
  }
}

class V1UserSignInInputBuilder
    implements Builder<V1UserSignInInput, V1UserSignInInputBuilder> {
  _$V1UserSignInInput? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  V1UserSignInInputBuilder() {
    V1UserSignInInput._initializeBuilder(this);
  }

  V1UserSignInInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1UserSignInInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1UserSignInInput;
  }

  @override
  void update(void Function(V1UserSignInInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1UserSignInInput build() {
    final _$result =
        _$v ?? new _$V1UserSignInInput._(password: password, phone: phone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
