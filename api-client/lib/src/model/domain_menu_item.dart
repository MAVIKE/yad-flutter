//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_menu_item.g.dart';



abstract class DomainMenuItem implements Built<DomainMenuItem, DomainMenuItemBuilder> {
    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'image')
    String? get image;

    @BuiltValueField(wireName: r'price')
    int? get price;

    @BuiltValueField(wireName: r'restaurant_id')
    int? get restaurantId;

    @BuiltValueField(wireName: r'title')
    String? get title;

    DomainMenuItem._();

    static void _initializeBuilder(DomainMenuItemBuilder b) => b;

    factory DomainMenuItem([void updates(DomainMenuItemBuilder b)]) = _$DomainMenuItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<DomainMenuItem> get serializer => _$DomainMenuItemSerializer();
}

class _$DomainMenuItemSerializer implements StructuredSerializer<DomainMenuItem> {
    @override
    final Iterable<Type> types = const [DomainMenuItem, _$DomainMenuItem];

    @override
    final String wireName = r'DomainMenuItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, DomainMenuItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.image != null) {
            result
                ..add(r'image')
                ..add(serializers.serialize(object.image,
                    specifiedType: const FullType(String)));
        }
        if (object.price != null) {
            result
                ..add(r'price')
                ..add(serializers.serialize(object.price,
                    specifiedType: const FullType(int)));
        }
        if (object.restaurantId != null) {
            result
                ..add(r'restaurant_id')
                ..add(serializers.serialize(object.restaurantId,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    DomainMenuItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DomainMenuItemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'image':
                    result.image = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'price':
                    result.price = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'restaurant_id':
                    result.restaurantId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

