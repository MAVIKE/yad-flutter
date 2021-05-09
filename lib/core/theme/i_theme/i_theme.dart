import 'package:flutter/material.dart';
part 'i_profile_theme.dart';
part 'i_login_theme.dart';
part 'i_dish_card_theme.dart';
part 'i_restaurant_card_theme.dart';
part 'i_dish_list_theme.dart';
part 'i_app_bar_theme.dart';
part 'i_input_theme.dart';
part 'i_data_input_card_theme.dart';
part 'i_registration_card_theme.dart';
part 'i_restaurant_list_theme.dart';
part 'i_cart_theme.dart';

abstract class ITheme {
  IProfileTheme get profileTheme;
  ILoginTheme get loginTheme;
  IAppBarTheme get appBarTheme;
  ThemeData get themeData;
  IDishCardTheme get dishCardTheme;
  IDishListTheme get dishListTheme;
  IInputTheme get inputTheme;
  IDataInputCardTheme get dataInputCardTheme;
  IRegistrationCardTheme get registrationCardTheme;
  IRestaurantListTheme get restaurantListTheme;
  IRestaurantCardTheme get restaurantCardTheme;
  ICartTheme get cartTheme;
}
