//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_location.g.dart';

abstract class DomainLocation
    implements Built<DomainLocation, DomainLocationBuilder> {
  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  DomainLocation._();

  static void _initializeBuilder(DomainLocationBuilder b) => b;

  factory DomainLocation([void updates(DomainLocationBuilder b)]) =
      _$DomainLocation;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainLocation> get serializer =>
      _$DomainLocationSerializer();
}

class _$DomainLocationSerializer
    implements StructuredSerializer<DomainLocation> {
  @override
  final Iterable<Type> types = const [DomainLocation, _$DomainLocation];

  @override
  final String wireName = r'DomainLocation';

  @override
  Iterable<Object?> serialize(Serializers serializers, DomainLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.latitude != null) {
      result
        ..add(r'latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(num)));
    }
    if (object.longitude != null) {
      result
        ..add(r'longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  DomainLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DomainLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case r'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }
    return result.build();
  }
}
