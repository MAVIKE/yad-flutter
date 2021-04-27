// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainLocation extends DomainLocation {
  @override
  final num? latitude;
  @override
  final num? longitude;

  factory _$DomainLocation([void Function(DomainLocationBuilder)? updates]) =>
      (new DomainLocationBuilder()..update(updates)).build();

  _$DomainLocation._({this.latitude, this.longitude}) : super._();

  @override
  DomainLocation rebuild(void Function(DomainLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainLocationBuilder toBuilder() =>
      new DomainLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainLocation &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainLocation')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class DomainLocationBuilder
    implements Builder<DomainLocation, DomainLocationBuilder> {
  _$DomainLocation? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  DomainLocationBuilder() {
    DomainLocation._initializeBuilder(this);
  }

  DomainLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainLocation;
  }

  @override
  void update(void Function(DomainLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainLocation build() {
    final _$result =
        _$v ?? new _$DomainLocation._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
