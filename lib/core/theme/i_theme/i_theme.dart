import 'package:flutter/material.dart';
part 'i_profile_theme.dart';
part 'i_login_theme.dart';

abstract class ITheme {
  Color get inputBackground;
  Color get inputForeground;

  IProfileTheme get profileTheme;
  ILoginTheme get loginTheme;
  AppBarTheme get appBarTheme;
  ThemeData get themeData;
}
