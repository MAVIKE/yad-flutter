//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_sign_in_input.g.dart';

abstract class V1UserSignInInput
    implements Built<V1UserSignInInput, V1UserSignInInputBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  V1UserSignInInput._();

  static void _initializeBuilder(V1UserSignInInputBuilder b) => b;

  factory V1UserSignInInput([void updates(V1UserSignInInputBuilder b)]) =
      _$V1UserSignInInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1UserSignInInput> get serializer =>
      _$V1UserSignInInputSerializer();
}

class _$V1UserSignInInputSerializer
    implements StructuredSerializer<V1UserSignInInput> {
  @override
  final Iterable<Type> types = const [V1UserSignInInput, _$V1UserSignInInput];

  @override
  final String wireName = r'V1UserSignInInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1UserSignInInput object,
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
  V1UserSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1UserSignInInputBuilder();

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
