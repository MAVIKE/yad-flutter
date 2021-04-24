//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_id_response.g.dart';

abstract class V1IdResponse
    implements Built<V1IdResponse, V1IdResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  V1IdResponse._();

  static void _initializeBuilder(V1IdResponseBuilder b) => b;

  factory V1IdResponse([void updates(V1IdResponseBuilder b)]) = _$V1IdResponse;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1IdResponse> get serializer => _$V1IdResponseSerializer();
}

class _$V1IdResponseSerializer implements StructuredSerializer<V1IdResponse> {
  @override
  final Iterable<Type> types = const [V1IdResponse, _$V1IdResponse];

  @override
  final String wireName = r'V1IdResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1IdResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.id != null) {
      result
        ..add(r'id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  V1IdResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1IdResponseBuilder();

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
      }
    }
    return result.build();
  }
}
