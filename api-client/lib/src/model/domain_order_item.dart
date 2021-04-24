//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_order_item.g.dart';

abstract class DomainOrderItem
    implements Built<DomainOrderItem, DomainOrderItemBuilder> {
  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'menu_item_id')
  int? get menuItemId;

  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  DomainOrderItem._();

  static void _initializeBuilder(DomainOrderItemBuilder b) => b;

  factory DomainOrderItem([void updates(DomainOrderItemBuilder b)]) =
      _$DomainOrderItem;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainOrderItem> get serializer =>
      _$DomainOrderItemSerializer();
}

class _$DomainOrderItemSerializer
    implements StructuredSerializer<DomainOrderItem> {
  @override
  final Iterable<Type> types = const [DomainOrderItem, _$DomainOrderItem];

  @override
  final String wireName = r'DomainOrderItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, DomainOrderItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.count != null) {
      result
        ..add(r'count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add(r'id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.menuItemId != null) {
      result
        ..add(r'menu_item_id')
        ..add(serializers.serialize(object.menuItemId,
            specifiedType: const FullType(int)));
    }
    if (object.orderId != null) {
      result
        ..add(r'order_id')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DomainOrderItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DomainOrderItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'menu_item_id':
          result.menuItemId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'order_id':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }
    return result.build();
  }
}
