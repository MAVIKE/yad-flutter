//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_item_update.g.dart';

abstract class V1OrderItemUpdate
    implements Built<V1OrderItemUpdate, V1OrderItemUpdateBuilder> {
  @BuiltValueField(wireName: r'count')
  int? get count;

  V1OrderItemUpdate._();

  static void _initializeBuilder(V1OrderItemUpdateBuilder b) => b;

  factory V1OrderItemUpdate([void updates(V1OrderItemUpdateBuilder b)]) =
      _$V1OrderItemUpdate;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OrderItemUpdate> get serializer =>
      _$V1OrderItemUpdateSerializer();
}

class _$V1OrderItemUpdateSerializer
    implements StructuredSerializer<V1OrderItemUpdate> {
  @override
  final Iterable<Type> types = const [V1OrderItemUpdate, _$V1OrderItemUpdate];

  @override
  final String wireName = r'V1OrderItemUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1OrderItemUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.count != null) {
      result
        ..add(r'count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  V1OrderItemUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1OrderItemUpdateBuilder();

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
      }
    }
    return result.build();
  }
}
