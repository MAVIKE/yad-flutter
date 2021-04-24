library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/admins_api.dart';
part 'api/categories_api.dart';
part 'api/couriers_api.dart';
part 'api/orders_api.dart';
part 'api/restaurants_api.dart';
part 'api/users_api.dart';

part 'model/domain_category.dart';
part 'model/domain_courier.dart';
part 'model/domain_location.dart';
part 'model/domain_menu_item.dart';
part 'model/domain_order.dart';
part 'model/domain_order_item.dart';
part 'model/domain_restaurant.dart';
part 'model/domain_user.dart';
part 'model/v1_category_input.dart';
part 'model/v1_courier_sign_up_input.dart';
part 'model/v1_courier_update.dart';
part 'model/v1_id_response.dart';
part 'model/v1_location_input.dart';
part 'model/v1_menu_item_input.dart';
part 'model/v1_menu_item_update.dart';
part 'model/v1_order_input.dart';
part 'model/v1_order_item_input.dart';
part 'model/v1_order_item_update.dart';
part 'model/v1_order_update.dart';
part 'model/v1_response.dart';
part 'model/v1_restaurant_sign_up_input.dart';
part 'model/v1_restaurant_update_input.dart';
part 'model/v1_sign_in_input.dart';
part 'model/v1_token_response.dart';
part 'model/v1_user_sign_up_input.dart';
part 'model/v1_user_update_input.dart';


ApiClient defaultApiClient = new ApiClient();
