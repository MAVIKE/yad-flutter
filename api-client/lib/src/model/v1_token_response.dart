//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_token_response.g.dart';

abstract class V1TokenResponse
    implements Built<V1TokenResponse, V1TokenResponseBuilder> {
  @BuiltValueField(wireName: r'token')
  String? get token;

  V1TokenResponse._();

  static void _initializeBuilder(V1TokenResponseBuilder b) => b;

  factory V1TokenResponse([void updates(V1TokenResponseBuilder b)]) =
      _$V1TokenResponse;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1TokenResponse> get serializer =>
      _$V1TokenResponseSerializer();
}

class _$V1TokenResponseSerializer
    implements StructuredSerializer<V1TokenResponse> {
  @override
  final Iterable<Type> types = const [V1TokenResponse, _$V1TokenResponse];

  @override
  final String wireName = r'V1TokenResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1TokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.token != null) {
      result
        ..add(r'token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  V1TokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1TokenResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }
    return result.build();
  }
}
