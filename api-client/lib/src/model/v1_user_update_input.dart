//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/v1_location_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_user_update_input.g.dart';



abstract class V1UserUpdateInput implements Built<V1UserUpdateInput, V1UserUpdateInputBuilder> {
    @BuiltValueField(wireName: r'address')
    V1LocationInput? get address;

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'password')
    String? get password;

    V1UserUpdateInput._();

    static void _initializeBuilder(V1UserUpdateInputBuilder b) => b;

    factory V1UserUpdateInput([void updates(V1UserUpdateInputBuilder b)]) = _$V1UserUpdateInput;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1UserUpdateInput> get serializer => _$V1UserUpdateInputSerializer();
}

class _$V1UserUpdateInputSerializer implements StructuredSerializer<V1UserUpdateInput> {
    @override
    final Iterable<Type> types = const [V1UserUpdateInput, _$V1UserUpdateInput];

    @override
    final String wireName = r'V1UserUpdateInput';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1UserUpdateInput object,
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
        return result;
    }

    @override
    V1UserUpdateInput deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1UserUpdateInputBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'address':
                    result.address.replace(serializers.deserialize(value,
                        specifiedType: const FullType(V1LocationInput)) as V1LocationInput);
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
            }
        }
        return result.build();
    }
}

