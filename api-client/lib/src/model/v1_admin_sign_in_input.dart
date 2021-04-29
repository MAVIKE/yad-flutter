//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_admin_sign_in_input.g.dart';

abstract class V1AdminSignInInput
    implements Built<V1AdminSignInInput, V1AdminSignInInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  V1AdminSignInInput._();

  static void _initializeBuilder(V1AdminSignInInputBuilder b) => b;

  factory V1AdminSignInInput([void updates(V1AdminSignInInputBuilder b)]) =
      _$V1AdminSignInInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1AdminSignInInput> get serializer =>
      _$V1AdminSignInInputSerializer();
}

class _$V1AdminSignInInputSerializer
    implements StructuredSerializer<V1AdminSignInInput> {
  @override
  final Iterable<Type> types = const [V1AdminSignInInput, _$V1AdminSignInInput];

  @override
  final String wireName = r'V1AdminSignInInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, V1AdminSignInInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.name != null) {
      result
        ..add(r'name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add(r'password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  V1AdminSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1AdminSignInInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }
    return result.build();
  }
}
