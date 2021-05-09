part of 'light_theme.dart';

class LightInputTheme implements IInputTheme {
  @override
  Color get background => Colors.white;

  @override
  Color get foreground => _purple;

  @override
  double get height => 25;

  @override
  TextStyle get inputTextStyle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 14);

  @override
  TextStyle get hintTextStyle => TextStyle(
      color: Colors.grey.shade500,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 14);

  @override
  TextStyle get labelTextStyle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 26);

  @override
  TextStyle get errorTextStyle => TextStyle(
      color: _purple,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 14);
}
