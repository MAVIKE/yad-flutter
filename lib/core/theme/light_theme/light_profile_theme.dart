part of 'light_theme.dart';

class LightProfileTheme implements IProfileTheme {
  @override
  Color get addressBackground => _orange;

  @override
  Color get addressForeground => _purple;

  @override
  IconData get expandIcon => Icons.settings;

  @override
  IconData get expandIconExpanded => Icons.save;

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
  Color get passwordBackground => Color.fromRGBO(0xB6, 0x0F, 0x0F, 1);

  @override
  Color get passwordForeground => _purple;

  @override
  Color get background => Colors.white;

  @override
  Color get foreground => _purple;

  @override
  BorderRadius get formsBorderRadius => BorderRadius.all(Radius.circular(18.0));

  @override
  EdgeInsetsGeometry get marginFormsList =>
      EdgeInsets.only(left: 18, top: 27, right: 27);

  @override
  EdgeInsetsGeometry get marginForm => EdgeInsets.only(top: 15);

  @override
  EdgeInsetsGeometry get marginInputs => EdgeInsets.only(left: 15);

  @override
  EdgeInsetsGeometry get marginInputsRight => EdgeInsets.only(right: 75);

  @override
  EdgeInsetsGeometry get marginOrdersRight => EdgeInsets.only(right: 130);

  @override
  EdgeInsetsGeometry get marginStageLeft => EdgeInsets.only(left: 50);

  @override
  EdgeInsetsGeometry get marginDishLeft => EdgeInsets.only(left: 2);

  @override
  EdgeInsetsGeometry get marginInputsLeft => EdgeInsets.only(left: 2);

  @override
  TextStyle get styleFormsTitle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 26);

  @override
  TextStyle get styleTitle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 30);

  @override
  TextStyle get styleOrderTitle => TextStyle(
      color: background,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 24);

  @override
  TextStyle get styleStageTitle => TextStyle(
      color: background,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 12);

  @override
  TextStyle get styleDishTitle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 15);

  @override
  TextStyle get styleHouseNumberTitle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 25);
}
