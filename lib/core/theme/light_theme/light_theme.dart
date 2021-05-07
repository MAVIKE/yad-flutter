import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';

part 'light_profile_theme.dart';
part 'light_login_theme.dart';
part 'light_dish_card_theme.dart';
part 'light_data_input_card_theme.dart';
part 'light_restaurant_list_theme.dart';

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
  static LightDataInputCardTheme _dataInputCardTheme =
      LightDataInputCardTheme();
  static LightRestaurantListTheme _restaurantListTheme = LightRestaurantListTheme();

  Color get appBarForeground => _purple;
  Color get appBarBackground => _yellow;

  @override
  Color get inputBackground => Colors.white;

  @override
  Color get inputForeground => Colors.black;

  @override
  IProfileTheme get profileTheme => _profileTheme;

  @override
  ILoginTheme get loginTheme => _loginTheme;

  @override
  AppBarTheme get appBarTheme => AppBarTheme(
      brightness: Brightness.light,
      backgroundColor: appBarBackground,
      foregroundColor: appBarForeground,
      titleTextStyle: TextStyle(
          color: appBarForeground,
          fontFamily: _primaryFontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 30));

  @override
  ThemeData get themeData => ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: _yellow,
      brightness: Brightness.light);

  @override
  IDishCardTheme get dishCardTheme => _dishCardTheme;

  @override
  IDataInputCardTheme get dataInputCardTheme => _dataInputCardTheme;

  @override
  IRestaurantListTheme get restaurantListTheme => _restaurantListTheme;
}
