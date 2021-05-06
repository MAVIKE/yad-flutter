part of 'light_theme.dart';

class LightAppBarTheme implements IAppBarTheme {
  double get height => 100;
  Color get background => _yellow;
  Color get foreground => _purple;

  @override
  TextStyle get titleTextStyle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 30);

  @override
  TextStyle get subtitleTextStyle => TextStyle(
      color: foreground,
      fontFamily: _primaryFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 20);

  AppBarTheme get flutter => AppBarTheme(
      brightness: Brightness.light,
      backgroundColor: background,
      foregroundColor: foreground,
      titleTextStyle: titleTextStyle);
}
