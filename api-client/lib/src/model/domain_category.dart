//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_category.g.dart';

abstract class DomainCategory
    implements Built<DomainCategory, DomainCategoryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'restaurant_id')
  int? get restaurantId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  DomainCategory._();

  static void _initializeBuilder(DomainCategoryBuilder b) => b;

  factory DomainCategory([void updates(DomainCategoryBuilder b)]) =
      _$DomainCategory;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainCategory> get serializer =>
      _$DomainCategorySerializer();
}

class _$DomainCategorySerializer
    implements StructuredSerializer<DomainCategory> {
  @override
  final Iterable<Type> types = const [DomainCategory, _$DomainCategory];

  @override
  final String wireName = r'DomainCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, DomainCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.id != null) {
      result
        ..add(r'id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.restaurantId != null) {
      result
        ..add(r'restaurant_id')
        ..add(serializers.serialize(object.restaurantId,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add(r'title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DomainCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DomainCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'restaurant_id':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }
    return result.build();
  }
}
