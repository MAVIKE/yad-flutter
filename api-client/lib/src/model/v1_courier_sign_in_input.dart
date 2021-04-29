//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_courier_sign_in_input.g.dart';

abstract class V1CourierSignInInput
    implements Built<V1CourierSignInInput, V1CourierSignInInputBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  V1CourierSignInInput._();

  static void _initializeBuilder(V1CourierSignInInputBuilder b) => b;

  factory V1CourierSignInInput([void updates(V1CourierSignInInputBuilder b)]) =
      _$V1CourierSignInInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1CourierSignInInput> get serializer =>
      _$V1CourierSignInInputSerializer();
}

class _$V1CourierSignInInputSerializer
    implements StructuredSerializer<V1CourierSignInInput> {
  @override
  final Iterable<Type> types = const [
    V1CourierSignInInput,
    _$V1CourierSignInInput
  ];

  @override
  final String wireName = r'V1CourierSignInInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, V1CourierSignInInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.password != null) {
      result
        ..add(r'password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add(r'phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  V1CourierSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1CourierSignInInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }
    return result.build();
  }
}
