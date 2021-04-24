//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_location_input.g.dart';



abstract class V1LocationInput implements Built<V1LocationInput, V1LocationInputBuilder> {
    @BuiltValueField(wireName: r'latitude')
    num? get latitude;

    @BuiltValueField(wireName: r'longitude')
    num? get longitude;

    V1LocationInput._();

    static void _initializeBuilder(V1LocationInputBuilder b) => b;

    factory V1LocationInput([void updates(V1LocationInputBuilder b)]) = _$V1LocationInput;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1LocationInput> get serializer => _$V1LocationInputSerializer();
}

class _$V1LocationInputSerializer implements StructuredSerializer<V1LocationInput> {
    @override
    final Iterable<Type> types = const [V1LocationInput, _$V1LocationInput];

    @override
    final String wireName = r'V1LocationInput';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1LocationInput object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.latitude != null) {
            result
                ..add(r'latitude')
                ..add(serializers.serialize(object.latitude,
                    specifiedType: const FullType(num)));
        }
        if (object.longitude != null) {
            result
                ..add(r'longitude')
                ..add(serializers.serialize(object.longitude,
                    specifiedType: const FullType(num)));
        }
        return result;
    }

    @override
    V1LocationInput deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1LocationInputBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'latitude':
                    result.latitude = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'longitude':
                    result.longitude = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
            }
        }
        return result.build();
    }
}

