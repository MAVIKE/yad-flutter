//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/v1_location_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_sign_up_input.g.dart';

abstract class V1UserSignUpInput
    implements Built<V1UserSignUpInput, V1UserSignUpInputBuilder> {
  @BuiltValueField(wireName: r'address')
  V1LocationInput? get address;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  V1UserSignUpInput._();

  static void _initializeBuilder(V1UserSignUpInputBuilder b) => b;

  factory V1UserSignUpInput([void updates(V1UserSignUpInputBuilder b)]) =
      _$V1UserSignUpInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1UserSignUpInput> get serializer =>
      _$V1UserSignUpInputSerializer();
}

class _$V1UserSignUpInputSerializer
    implements StructuredSerializer<V1UserSignUpInput> {
  @override
  final Iterable<Type> types = const [V1UserSignUpInput, _$V1UserSignUpInput];

  @override
  final String wireName = r'V1UserSignUpInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, V1UserSignUpInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.address != null) {
      result
        ..add(r'address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(V1LocationInput)));
    }
    if (object.email != null) {
      result
        ..add(r'email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
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
    if (object.phone != null) {
      result
        ..add(r'phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  V1UserSignUpInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1UserSignUpInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(V1LocationInput))
              as V1LocationInput);
          break;
        case r'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
