//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_menu_item_update.g.dart';

abstract class V1MenuItemUpdate
    implements Built<V1MenuItemUpdate, V1MenuItemUpdateBuilder> {
  @BuiltValueField(wireName: r'category_id')
  int? get categoryId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'price')
  int? get price;

  @BuiltValueField(wireName: r'title')
  String? get title;

  V1MenuItemUpdate._();

  static void _initializeBuilder(V1MenuItemUpdateBuilder b) => b;

  factory V1MenuItemUpdate([void updates(V1MenuItemUpdateBuilder b)]) =
      _$V1MenuItemUpdate;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1MenuItemUpdate> get serializer =>
      _$V1MenuItemUpdateSerializer();
}

class _$V1MenuItemUpdateSerializer
    implements StructuredSerializer<V1MenuItemUpdate> {
  @override
  final Iterable<Type> types = const [V1MenuItemUpdate, _$V1MenuItemUpdate];

  @override
  final String wireName = r'V1MenuItemUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1MenuItemUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.categoryId != null) {
      result
        ..add(r'category_id')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add(r'description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add(r'image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add(r'price')
        ..add(serializers.serialize(object.price,
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
  V1MenuItemUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1MenuItemUpdateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'price':
          result.price = serializers.deserialize(value,
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
