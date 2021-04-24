//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_response.g.dart';



abstract class V1Response implements Built<V1Response, V1ResponseBuilder> {
    @BuiltValueField(wireName: r'message')
    String? get message;

    V1Response._();

    static void _initializeBuilder(V1ResponseBuilder b) => b;

    factory V1Response([void updates(V1ResponseBuilder b)]) = _$V1Response;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1Response> get serializer => _$V1ResponseSerializer();
}

class _$V1ResponseSerializer implements StructuredSerializer<V1Response> {
    @override
    final Iterable<Type> types = const [V1Response, _$V1Response];

    @override
    final String wireName = r'V1Response';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1Response object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    V1Response deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1ResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

