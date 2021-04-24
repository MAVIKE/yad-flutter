//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_category_input.g.dart';



abstract class V1CategoryInput implements Built<V1CategoryInput, V1CategoryInputBuilder> {
    @BuiltValueField(wireName: r'title')
    String? get title;

    V1CategoryInput._();

    static void _initializeBuilder(V1CategoryInputBuilder b) => b;

    factory V1CategoryInput([void updates(V1CategoryInputBuilder b)]) = _$V1CategoryInput;

    @BuiltValueSerializer(custom: true)
    static Serializer<V1CategoryInput> get serializer => _$V1CategoryInputSerializer();
}

class _$V1CategoryInputSerializer implements StructuredSerializer<V1CategoryInput> {
    @override
    final Iterable<Type> types = const [V1CategoryInput, _$V1CategoryInput];

    @override
    final String wireName = r'V1CategoryInput';

    @override
    Iterable<Object?> serialize(Serializers serializers, V1CategoryInput object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    V1CategoryInput deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = V1CategoryInputBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

