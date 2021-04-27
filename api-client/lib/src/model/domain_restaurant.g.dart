// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainRestaurant extends DomainRestaurant {
  @override
  final int? id;
  @override
  final String? image;
  @override
  final DomainLocation? location;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final int? workingStatus;

  factory _$DomainRestaurant(
          [void Function(DomainRestaurantBuilder)? updates]) =>
      (new DomainRestaurantBuilder()..update(updates)).build();

  _$DomainRestaurant._(
      {this.id,
      this.image,
      this.location,
      this.name,
      this.password,
      this.phone,
      this.workingStatus})
      : super._();

  @override
  DomainRestaurant rebuild(void Function(DomainRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainRestaurantBuilder toBuilder() =>
      new DomainRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainRestaurant &&
        id == other.id &&
        image == other.image &&
        location == other.location &&
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
                $jc(
                    $jc($jc($jc(0, id.hashCode), image.hashCode),
                        location.hashCode),
                    name.hashCode),
                password.hashCode),
            phone.hashCode),
        workingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainRestaurant')
          ..add('id', id)
          ..add('image', image)
          ..add('location', location)
          ..add('name', name)
          ..add('password', password)
          ..add('phone', phone)
          ..add('workingStatus', workingStatus))
        .toString();
  }
}

class DomainRestaurantBuilder
    implements Builder<DomainRestaurant, DomainRestaurantBuilder> {
  _$DomainRestaurant? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

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

  int? _workingStatus;
  int? get workingStatus => _$this._workingStatus;
  set workingStatus(int? workingStatus) =>
      _$this._workingStatus = workingStatus;

  DomainRestaurantBuilder() {
    DomainRestaurant._initializeBuilder(this);
  }

  DomainRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _location = $v.location?.toBuilder();
      _name = $v.name;
      _password = $v.password;
      _phone = $v.phone;
      _workingStatus = $v.workingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainRestaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainRestaurant;
  }

  @override
  void update(void Function(DomainRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainRestaurant build() {
    _$DomainRestaurant _$result;
    try {
      _$result = _$v ??
          new _$DomainRestaurant._(
              id: id,
              image: image,
              location: _location?.build(),
              name: name,
              password: password,
              phone: phone,
              workingStatus: workingStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DomainRestaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
