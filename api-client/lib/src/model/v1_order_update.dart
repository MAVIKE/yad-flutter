//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_order_update.g.dart';



abstract class V1OrderUpdate implements Built<V1OrderUpdate, V1OrderUpdateBuilder> {
    @BuiltValueField(wireName: r'status')
    int? get status;

    V1OrderUpdate._();

    static void _initializeBuilder(V1OrderUpdateBuilder b) => b;

    factory V1OrderUpdate([void updates(V1OrderUpdateBuilder b)]) = _$V1OrderUpdate;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1OrderUpdate> get serializer => _$V1OrderUpdateSerializer();
}

class _$V1OrderUpdateSerializer implements StructuredSerializer<V1OrderUpdate> {
    @override
    final Iterable<Type> types = const [V1OrderUpdate, _$V1OrderUpdate];

    @override
    final String wireName = r'V1OrderUpdate';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1OrderUpdate object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    V1OrderUpdate deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1OrderUpdateBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

