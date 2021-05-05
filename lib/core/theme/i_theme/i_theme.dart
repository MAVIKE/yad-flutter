import 'package:flutter/material.dart';
part 'i_profile_theme.dart';
part 'i_login_theme.dart';
part 'i_dish_card_theme.dart';
part 'i_registration_card.dart';

abstract class ITheme {
  Color get inputBackground;
  Color get inputForeground;

  IProfileTheme get profileTheme;
  ILoginTheme get loginTheme;
  AppBarTheme get appBarTheme;
  ThemeData get themeData;
  IDishCardTheme get dishCardTheme;
  IRegistrationCardTheme get registrationCardTheme;
}
