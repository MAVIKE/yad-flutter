//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/v1_location_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_restaurant_update_input.g.dart';



abstract class V1RestaurantUpdateInput implements Built<V1RestaurantUpdateInput, V1RestaurantUpdateInputBuilder> {
    @BuiltValueField(wireName: r'address')
    V1LocationInput? get address;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'working_status')
    int? get workingStatus;

    V1RestaurantUpdateInput._();

    static void _initializeBuilder(V1RestaurantUpdateInputBuilder b) => b;

    factory V1RestaurantUpdateInput([void updates(V1RestaurantUpdateInputBuilder b)]) = _$V1RestaurantUpdateInput;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1RestaurantUpdateInput> get serializer => _$V1RestaurantUpdateInputSerializer();
}

class _$V1RestaurantUpdateInputSerializer implements StructuredSerializer<V1RestaurantUpdateInput> {
    @override
    final Iterable<Type> types = const [V1RestaurantUpdateInput, _$V1RestaurantUpdateInput];

    @override
    final String wireName = r'V1RestaurantUpdateInput';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1RestaurantUpdateInput object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(V1LocationInput)));
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
        if (object.workingStatus != null) {
            result
                ..add(r'working_status')
                ..add(serializers.serialize(object.workingStatus,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    V1RestaurantUpdateInput deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1RestaurantUpdateInputBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'password':
                    result.password = serializers.deserialize(value,
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

