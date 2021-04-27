import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';

const Color _yellow = Color.fromRGBO(251, 187, 0, 1);
const Color _orange = Color.fromRGBO(248, 113, 34, 1);
const Color _darkPink = Color.fromRGBO(248, 113, 34, 1);
const Color _purple = Color.fromRGBO(65, 14, 130, 1);
const String _primaryFontFamily = "Roboto";

class YadThemeData {}

class LightTheme implements ITheme {
  static LightProfileTheme _profileTheme = LightProfileTheme();
  static LightLoginTheme _loginTheme = LightLoginTheme();

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
}

class LightProfileTheme implements IProfileTheme {
  @override
  Color get addressBackground => _orange;

  @override
  Color get addressForeground => _purple;

  @override
  IconData get expandIcon => Icons.settings;

  @override
  Color get expandIconColor => Colors.black;

  @override
  Color get userBackground => _yellow;

  @override
  Color get userForeground => _purple;

  @override
  Color get ordersBackground => _darkPink;

  @override
  Color get ordersForeground => _purple;

  @override
  Color get background => Colors.white;

  @override
  Color get foreground => _purple;
}

class LightLoginTheme implements ILoginTheme {
  @override
  // TODO: implement buttonBackground
  Color get buttonBackground => throw UnimplementedError();

  @override
  // TODO: implement buttonForeground
  Color get buttonForeground => throw UnimplementedError();

  @override
  // TODO: implement cardBackground
  Color get cardBackground => throw UnimplementedError();

  @override
  // TODO: implement cardForeground
  Color get cardForeground => throw UnimplementedError();
}
