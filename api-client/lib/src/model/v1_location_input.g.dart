// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_location_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1LocationInput extends V1LocationInput {
  @override
  final num? latitude;
  @override
  final num? longitude;

  factory _$V1LocationInput([void Function(V1LocationInputBuilder)? updates]) =>
      (new V1LocationInputBuilder()..update(updates)).build();

  _$V1LocationInput._({this.latitude, this.longitude}) : super._();

  @override
  V1LocationInput rebuild(void Function(V1LocationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1LocationInputBuilder toBuilder() =>
      new V1LocationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1LocationInput &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1LocationInput')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class V1LocationInputBuilder
    implements Builder<V1LocationInput, V1LocationInputBuilder> {
  _$V1LocationInput? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  V1LocationInputBuilder() {
    V1LocationInput._initializeBuilder(this);
  }

  V1LocationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1LocationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1LocationInput;
  }

  @override
  void update(void Function(V1LocationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1LocationInput build() {
    final _$result = _$v ??
        new _$V1LocationInput._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
