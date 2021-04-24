//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';

import 'package:api_client/src/model/domain_category.dart';
import 'package:api_client/src/model/domain_courier.dart';
import 'package:api_client/src/model/domain_location.dart';
import 'package:api_client/src/model/domain_menu_item.dart';
import 'package:api_client/src/model/domain_order.dart';
import 'package:api_client/src/model/domain_order_item.dart';
import 'package:api_client/src/model/domain_restaurant.dart';
import 'package:api_client/src/model/domain_user.dart';
import 'package:api_client/src/model/v1_category_input.dart';
import 'package:api_client/src/model/v1_courier_sign_up_input.dart';
import 'package:api_client/src/model/v1_courier_update.dart';
import 'package:api_client/src/model/v1_id_response.dart';
import 'package:api_client/src/model/v1_location_input.dart';
import 'package:api_client/src/model/v1_menu_item_input.dart';
import 'package:api_client/src/model/v1_menu_item_update.dart';
import 'package:api_client/src/model/v1_order_input.dart';
import 'package:api_client/src/model/v1_order_item_input.dart';
import 'package:api_client/src/model/v1_order_item_update.dart';
import 'package:api_client/src/model/v1_order_update.dart';
import 'package:api_client/src/model/v1_response.dart';
import 'package:api_client/src/model/v1_restaurant_sign_up_input.dart';
import 'package:api_client/src/model/v1_restaurant_update_input.dart';
import 'package:api_client/src/model/v1_sign_in_input.dart';
import 'package:api_client/src/model/v1_token_response.dart';
import 'package:api_client/src/model/v1_user_sign_up_input.dart';
import 'package:api_client/src/model/v1_user_update_input.dart';

part 'serializers.g.dart';

@SerializersFor([
  DomainCategory,
  DomainCourier,
  DomainLocation,
  DomainMenuItem,
  DomainOrder,
  DomainOrderItem,
  DomainRestaurant,
  DomainUser,
  V1CategoryInput,
  V1CourierSignUpInput,
  V1CourierUpdate,
  V1IdResponse,
  V1LocationInput,
  V1MenuItemInput,
  V1MenuItemUpdate,
  V1OrderInput,
  V1OrderItemInput,
  V1OrderItemUpdate,
  V1OrderUpdate,
  V1Response,
  V1RestaurantSignUpInput,
  V1RestaurantUpdateInput,
  V1SignInInput,
  V1TokenResponse,
  V1UserSignUpInput,
  V1UserUpdateInput,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainMenuItem)]),
        () => ListBuilder<DomainMenuItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainCategory)]),
        () => ListBuilder<DomainCategory>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainOrderItem)]),
        () => ListBuilder<DomainOrderItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainOrder)]),
        () => ListBuilder<DomainOrder>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainRestaurant)]),
        () => ListBuilder<DomainRestaurant>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DomainMenuItem)]),
        () => ListBuilder<DomainMenuItem>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
