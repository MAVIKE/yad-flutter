import 'package:flutter/material.dart';

abstract class ITheme {
  Color get inputBackground;
  Color get inputForeground;

  IProfileTheme get profileTheme;
  ILoginTheme get loginTheme;
  AppBarTheme get appBarTheme;
  ThemeData get themeData;
}

abstract class IProfileTheme {
  Color get background;
  Color get foreground;
  Color get expandIconColor;
  IconData get expandIcon;

  Color get userBackground;
  Color get userForeground;
  Color get addressBackground;
  Color get addressForeground;
  Color get ordersBackground;
  Color get ordersForeground;
}

abstract class ILoginTheme {
  Color get buttonBackground;
  Color get buttonForeground;
  Color get cardBackground;
  Color get cardForeground;
}
