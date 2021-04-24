// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_sign_in_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1SignInInput extends V1SignInInput {
  @override
  final String? name;
  @override
  final String? password;

  factory _$V1SignInInput([void Function(V1SignInInputBuilder)? updates]) =>
      (new V1SignInInputBuilder()..update(updates)).build();

  _$V1SignInInput._({this.name, this.password}) : super._();

  @override
  V1SignInInput rebuild(void Function(V1SignInInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1SignInInputBuilder toBuilder() => new V1SignInInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1SignInInput &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1SignInInput')
          ..add('name', name)
          ..add('password', password))
        .toString();
  }
}

class V1SignInInputBuilder
    implements Builder<V1SignInInput, V1SignInInputBuilder> {
  _$V1SignInInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  V1SignInInputBuilder() {
    V1SignInInput._initializeBuilder(this);
  }

  V1SignInInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1SignInInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1SignInInput;
  }

  @override
  void update(void Function(V1SignInInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1SignInInput build() {
    final _$result =
        _$v ?? new _$V1SignInInput._(name: name, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
