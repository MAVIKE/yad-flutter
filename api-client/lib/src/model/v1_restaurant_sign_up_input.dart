//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/v1_location_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_restaurant_sign_up_input.g.dart';

abstract class V1RestaurantSignUpInput
    implements Built<V1RestaurantSignUpInput, V1RestaurantSignUpInputBuilder> {
  @BuiltValueField(wireName: r'address')
  V1LocationInput? get address;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'working_status')
  int? get workingStatus;

  V1RestaurantSignUpInput._();

  static void _initializeBuilder(V1RestaurantSignUpInputBuilder b) => b;

  factory V1RestaurantSignUpInput(
          [void updates(V1RestaurantSignUpInputBuilder b)]) =
      _$V1RestaurantSignUpInput;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1RestaurantSignUpInput> get serializer =>
      _$V1RestaurantSignUpInputSerializer();
}

class _$V1RestaurantSignUpInputSerializer
    implements StructuredSerializer<V1RestaurantSignUpInput> {
  @override
  final Iterable<Type> types = const [
    V1RestaurantSignUpInput,
    _$V1RestaurantSignUpInput
  ];

  @override
  final String wireName = r'V1RestaurantSignUpInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, V1RestaurantSignUpInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.address != null) {
      result
        ..add(r'address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(V1LocationInput)));
    }
    if (object.image != null) {
      result
        ..add(r'image')
        ..add(serializers.serialize(object.image,
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
    if (object.workingStatus != null) {
      result
        ..add(r'working_status')
        ..add(serializers.serialize(object.workingStatus,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  V1RestaurantSignUpInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = V1RestaurantSignUpInputBuilder();

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
        case r'image':
          result.image = serializers.deserialize(value,
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
        case r'working_status':
          result.workingStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }
    return result.build();
  }
}
