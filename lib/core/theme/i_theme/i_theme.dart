import 'package:flutter/material.dart';
part 'i_profile_theme.dart';
part 'i_login_theme.dart';
part 'i_dish_card_theme.dart';
part 'i_app_bar_theme.dart';
part 'i_input_theme.dart';
part 'i_data_input_card_theme.dart';

abstract class ITheme {
  IProfileTheme get profileTheme;
  ILoginTheme get loginTheme;
  IAppBarTheme get appBarTheme;
  ThemeData get themeData;
  IDishCardTheme get dishCardTheme;
  IInputTheme get inputTheme;
  IDataInputCardTheme get dataInputCardTheme;
}
