//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:api_client/src/model/domain_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_restaurant.g.dart';



abstract class DomainRestaurant implements Built<DomainRestaurant, DomainRestaurantBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'image')
    String? get image;

    @BuiltValueField(wireName: r'location')
    DomainLocation? get location;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'working_status')
    int? get workingStatus;

    DomainRestaurant._();

    static void _initializeBuilder(DomainRestaurantBuilder b) => b;

    factory DomainRestaurant([void updates(DomainRestaurantBuilder b)]) = _$DomainRestaurant;

    @BuiltValueSerializer(custom: true)
    static Serializer<DomainRestaurant> get serializer => _$DomainRestaurantSerializer();
}

class _$DomainRestaurantSerializer implements StructuredSerializer<DomainRestaurant> {
    @override
    final Iterable<Type> types = const [DomainRestaurant, _$DomainRestaurant];

    @override
    final String wireName = r'DomainRestaurant';

    @override
    Iterable<Object?> serialize(Serializers serializers, DomainRestaurant object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        if (object.workingStatus != null) {
            result
                ..add(r'working_status')
                ..add(serializers.serialize(object.workingStatus,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    DomainRestaurant deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DomainRestaurantBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'image':
                    result.image = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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
                case r'working_status':
                    result.workingStatus = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

