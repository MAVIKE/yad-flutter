import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';

part 'light_profile_theme.dart';
part 'light_login_theme.dart';
part 'light_dish_card_theme.dart';
part 'light_app_bar_theme.dart';
part 'light_input_theme.dart';

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
  static LightAppBarTheme _appBarTheme = LightAppBarTheme();
  static LightInputTheme _inputTheme = LightInputTheme();

  Color get appBarForeground => _purple;
  Color get appBarBackground => _yellow;

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
  IInputTheme get inputTheme => _inputTheme;
}
