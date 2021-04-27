// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainUser extends DomainUser {
  @override
  final String? email;
  @override
  final int? id;
  @override
  final DomainLocation? location;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? phone;

  factory _$DomainUser([void Function(DomainUserBuilder)? updates]) =>
      (new DomainUserBuilder()..update(updates)).build();

  _$DomainUser._(
      {this.email,
      this.id,
      this.location,
      this.name,
      this.password,
      this.phone})
      : super._();

  @override
  DomainUser rebuild(void Function(DomainUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainUserBuilder toBuilder() => new DomainUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainUser &&
        email == other.email &&
        id == other.id &&
        location == other.location &&
        name == other.name &&
        password == other.password &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, email.hashCode), id.hashCode),
                    location.hashCode),
                name.hashCode),
            password.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainUser')
          ..add('email', email)
          ..add('id', id)
          ..add('location', location)
          ..add('name', name)
          ..add('password', password)
          ..add('phone', phone))
        .toString();
  }
}

class DomainUserBuilder implements Builder<DomainUser, DomainUserBuilder> {
  _$DomainUser? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DomainLocationBuilder? _location;
  DomainLocationBuilder get location =>
      _$this._location ??= new DomainLocationBuilder();
  set location(DomainLocationBuilder? location) => _$this._location = location;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DomainUserBuilder() {
    DomainUser._initializeBuilder(this);
  }

  DomainUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _id = $v.id;
      _location = $v.location?.toBuilder();
      _name = $v.name;
      _password = $v.password;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainUser;
  }

  @override
  void update(void Function(DomainUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainUser build() {
    _$DomainUser _$result;
    try {
      _$result = _$v ??
          new _$DomainUser._(
              email: email,
              id: id,
              location: _location?.build(),
              name: name,
              password: password,
              phone: phone);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DomainUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
