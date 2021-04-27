//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_input.g.dart';

abstract class V1OrderInput
    implements Built<V1OrderInput, V1OrderInputBuilder> {
  @BuiltValueField(wireName: r'restaurant_id')
  int? get restaurantId;

  V1OrderInput._();

  static void _initializeBuilder(V1OrderInputBuilder b) => b;

  factory V1OrderInput([void updates(V1OrderInputBuilder b)]) = _$V1OrderInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1OrderInput> get serializer => _$V1OrderInputSerializer();
}

class _$V1OrderInputSerializer implements StructuredSerializer<V1OrderInput> {
  @override
  final Iterable<Type> types = const [V1OrderInput, _$V1OrderInput];

  @override
  final String wireName = r'V1OrderInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1OrderInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.restaurantId != null) {
      result
        ..add(r'restaurant_id')
        ..add(serializers.serialize(object.restaurantId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  V1OrderInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1OrderInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'restaurant_id':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }
    return result.build();
  }
}
