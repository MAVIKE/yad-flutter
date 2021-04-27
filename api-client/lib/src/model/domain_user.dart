//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/domain_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_user.g.dart';

abstract class DomainUser implements Built<DomainUser, DomainUserBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'location')
  DomainLocation? get location;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  DomainUser._();

  static void _initializeBuilder(DomainUserBuilder b) => b;

  factory DomainUser([void updates(DomainUserBuilder b)]) = _$DomainUser;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainUser> get serializer => _$DomainUserSerializer();
}

class _$DomainUserSerializer implements StructuredSerializer<DomainUser> {
  @override
  final Iterable<Type> types = const [DomainUser, _$DomainUser];

  @override
  final String wireName = r'DomainUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, DomainUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.email != null) {
      result
        ..add(r'email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add(r'id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.location != null) {
      result
        ..add(r'location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(DomainLocation)));
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
  DomainUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DomainUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case r'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case r'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(DomainLocation)) as DomainLocation);
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
