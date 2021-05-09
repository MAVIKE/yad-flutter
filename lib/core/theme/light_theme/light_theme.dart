import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';

part 'light_profile_theme.dart';
part 'light_login_theme.dart';
part 'light_dish_card_theme.dart';
part 'light_dish_list_theme.dart';
part 'light_app_bar_theme.dart';
part 'light_input_theme.dart';
part 'light_data_input_card_theme.dart';
part 'light_registration_card_theme.dart';
part 'light_restaurant_list_theme.dart';
part 'light_restaurant_card_theme.dart';
part 'light_db_main_theme.dart';

const Color _yellow = Color.fromRGBO(251, 187, 0, 1);
const Color _orange = Color.fromRGBO(248, 113, 34, 1);
const Color _darkPink = Color.fromRGBO(248, 113, 34, 1);
const Color _purple = Color.fromRGBO(65, 14, 130, 1);
const String _primaryFontFamily = "Roboto";

class YadThemeData {}

class LightTheme implements ITheme {
  static LightProfileTheme _profileTheme = LightProfileTheme();
  static LightLoginTheme _loginTheme = LightLoginTheme();
  static LightDishCardTheme _dishCardTheme = LightDishCardTheme();
  static LightDishListTheme _dishListTheme = LightDishListTheme();
  static LightAppBarTheme _appBarTheme = LightAppBarTheme();
  static LightInputTheme _inputTheme = LightInputTheme();
  static LightDataInputCardTheme _dataInputCardTheme =
      LightDataInputCardTheme();
  static LightRegistrationCardTheme _registrationCardTheme =
      LightRegistrationCardTheme();
  static LightRestaurantListTheme _restaurantListTheme =
      LightRestaurantListTheme();
  static LightRestaurantCardTheme _restaurantCardTheme =
      LightRestaurantCardTheme();
  static LightDbMainTheme _dbMainTheme = LightDbMainTheme();

  @override
  IProfileTheme get profileTheme => _profileTheme;

  @override
  ILoginTheme get loginTheme => _loginTheme;

  @override
  IAppBarTheme get appBarTheme => _appBarTheme;

  @override
  ThemeData get themeData => ThemeData(
      appBarTheme: _appBarTheme.flutter,
      primaryColor: _yellow,
      brightness: Brightness.light);

  @override
  IDishCardTheme get dishCardTheme => _dishCardTheme;

  @override
  IDishListTheme get dishListTheme => _dishListTheme;

  @override
  IDataInputCardTheme get dataInputCardTheme => _dataInputCardTheme;

  @override
  IInputTheme get inputTheme => _inputTheme;

  @override
  IRegistrationCardTheme get registrationCardTheme => _registrationCardTheme;

  @override
  IRestaurantListTheme get restaurantListTheme => _restaurantListTheme;

  @override
  IRestaurantCardTheme get restaurantCardTheme => _restaurantCardTheme;

  @override
  IDbMainTheme get dbMainTheme => _dbMainTheme;
}
