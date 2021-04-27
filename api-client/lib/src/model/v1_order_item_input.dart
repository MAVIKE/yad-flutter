//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_item_input.g.dart';

abstract class V1OrderItemInput
    implements Built<V1OrderItemInput, V1OrderItemInputBuilder> {
  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'menu_item_id')
  int? get menuItemId;

  V1OrderItemInput._();

  static void _initializeBuilder(V1OrderItemInputBuilder b) => b;

  factory V1OrderItemInput([void updates(V1OrderItemInputBuilder b)]) =
      _$V1OrderItemInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OrderItemInput> get serializer =>
      _$V1OrderItemInputSerializer();
}

class _$V1OrderItemInputSerializer
    implements StructuredSerializer<V1OrderItemInput> {
  @override
  final Iterable<Type> types = const [V1OrderItemInput, _$V1OrderItemInput];

  @override
  final String wireName = r'V1OrderItemInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1OrderItemInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.count != null) {
      result
        ..add(r'count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.menuItemId != null) {
      result
        ..add(r'menu_item_id')
        ..add(serializers.serialize(object.menuItemId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  V1OrderItemInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1OrderItemInputBuilder();

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
        case r'menu_item_id':
          result.menuItemId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }
    return result.build();
  }
}
