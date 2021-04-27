//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_order.g.dart';

abstract class DomainOrder implements Built<DomainOrder, DomainOrderBuilder> {
  @BuiltValueField(wireName: r'courier_id')
  int? get courierId;

  @BuiltValueField(wireName: r'delivery_price')
  int? get deliveryPrice;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'paid')
  String? get paid;

  @BuiltValueField(wireName: r'restaurant_id')
  int? get restaurantId;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'total_price')
  int? get totalPrice;

  @BuiltValueField(wireName: r'user_id')
  int? get userId;

  DomainOrder._();

  static void _initializeBuilder(DomainOrderBuilder b) => b;

  factory DomainOrder([void updates(DomainOrderBuilder b)]) = _$DomainOrder;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainOrder> get serializer => _$DomainOrderSerializer();
}

class _$DomainOrderSerializer implements StructuredSerializer<DomainOrder> {
  @override
  final Iterable<Type> types = const [DomainOrder, _$DomainOrder];

  @override
  final String wireName = r'DomainOrder';

  @override
  Iterable<Object?> serialize(Serializers serializers, DomainOrder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.courierId != null) {
      result
        ..add(r'courier_id')
        ..add(serializers.serialize(object.courierId,
            specifiedType: const FullType(int)));
    }
    if (object.deliveryPrice != null) {
      result
        ..add(r'delivery_price')
        ..add(serializers.serialize(object.deliveryPrice,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add(r'id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.paid != null) {
      result
        ..add(r'paid')
        ..add(serializers.serialize(object.paid,
            specifiedType: const FullType(String)));
    }
    if (object.restaurantId != null) {
      result
        ..add(r'restaurant_id')
        ..add(serializers.serialize(object.restaurantId,
            specifiedType: const FullType(int)));
    }
    if (object.status != null) {
      result
        ..add(r'status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.totalPrice != null) {
      result
        ..add(r'total_price')
        ..add(serializers.serialize(object.totalPrice,
            specifiedType: const FullType(int)));
    }
    if (object.userId != null) {
      result
        ..add(r'user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DomainOrder deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DomainOrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'courier_id':
          result.courierId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'delivery_price':
          result.deliveryPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'restaurant_id':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'total_price':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }
    return result.build();
  }
}
