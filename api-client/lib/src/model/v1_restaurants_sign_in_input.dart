//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_restaurants_sign_in_input.g.dart';

abstract class V1RestaurantsSignInInput
    implements
        Built<V1RestaurantsSignInInput, V1RestaurantsSignInInputBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  V1RestaurantsSignInInput._();

  static void _initializeBuilder(V1RestaurantsSignInInputBuilder b) => b;

  factory V1RestaurantsSignInInput(
          [void updates(V1RestaurantsSignInInputBuilder b)]) =
      _$V1RestaurantsSignInInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1RestaurantsSignInInput> get serializer =>
      _$V1RestaurantsSignInInputSerializer();
}

class _$V1RestaurantsSignInInputSerializer
    implements StructuredSerializer<V1RestaurantsSignInInput> {
  @override
  final Iterable<Type> types = const [
    V1RestaurantsSignInInput,
    _$V1RestaurantsSignInInput
  ];

  @override
  final String wireName = r'V1RestaurantsSignInInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, V1RestaurantsSignInInput object,
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
  V1RestaurantsSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1RestaurantsSignInInputBuilder();

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
