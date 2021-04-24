//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_sign_in_input.g.dart';

abstract class V1SignInInput
    implements Built<V1SignInInput, V1SignInInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  V1SignInInput._();

  static void _initializeBuilder(V1SignInInputBuilder b) => b;

  factory V1SignInInput([void updates(V1SignInInputBuilder b)]) =
      _$V1SignInInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1SignInInput> get serializer =>
      _$V1SignInInputSerializer();
}

class _$V1SignInInputSerializer implements StructuredSerializer<V1SignInInput> {
  @override
  final Iterable<Type> types = const [V1SignInInput, _$V1SignInInput];

  @override
  final String wireName = r'V1SignInInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1SignInInput object,
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
  V1SignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1SignInInputBuilder();

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
