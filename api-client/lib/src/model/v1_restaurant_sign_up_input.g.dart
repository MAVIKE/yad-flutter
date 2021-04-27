// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_restaurant_sign_up_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1RestaurantSignUpInput extends V1RestaurantSignUpInput {
  @override
  final V1LocationInput? address;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final int? workingStatus;

  factory _$V1RestaurantSignUpInput(
          [void Function(V1RestaurantSignUpInputBuilder)? updates]) =>
      (new V1RestaurantSignUpInputBuilder()..update(updates)).build();

  _$V1RestaurantSignUpInput._(
      {this.address,
      this.image,
      this.name,
      this.password,
      this.phone,
      this.workingStatus})
      : super._();

  @override
  V1RestaurantSignUpInput rebuild(
          void Function(V1RestaurantSignUpInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1RestaurantSignUpInputBuilder toBuilder() =>
      new V1RestaurantSignUpInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1RestaurantSignUpInput &&
        address == other.address &&
        image == other.image &&
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
                $jc($jc($jc(0, address.hashCode), image.hashCode),
                    name.hashCode),
                password.hashCode),
            phone.hashCode),
        workingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1RestaurantSignUpInput')
          ..add('address', address)
          ..add('image', image)
          ..add('name', name)
          ..add('password', password)
          ..add('phone', phone)
          ..add('workingStatus', workingStatus))
        .toString();
  }
}

class V1RestaurantSignUpInputBuilder
    implements
        Builder<V1RestaurantSignUpInput, V1RestaurantSignUpInputBuilder> {
  _$V1RestaurantSignUpInput? _$v;

  V1LocationInputBuilder? _address;
  V1LocationInputBuilder get address =>
      _$this._address ??= new V1LocationInputBuilder();
  set address(V1LocationInputBuilder? address) => _$this._address = address;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

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

  V1RestaurantSignUpInputBuilder() {
    V1RestaurantSignUpInput._initializeBuilder(this);
  }

  V1RestaurantSignUpInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _image = $v.image;
      _name = $v.name;
      _password = $v.password;
      _phone = $v.phone;
      _workingStatus = $v.workingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1RestaurantSignUpInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1RestaurantSignUpInput;
  }

  @override
  void update(void Function(V1RestaurantSignUpInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1RestaurantSignUpInput build() {
    _$V1RestaurantSignUpInput _$result;
    try {
      _$result = _$v ??
          new _$V1RestaurantSignUpInput._(
              address: _address?.build(),
              image: image,
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
            'V1RestaurantSignUpInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
