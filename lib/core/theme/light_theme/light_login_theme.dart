part of 'light_theme.dart';

class LightLoginTheme implements ILoginTheme {
  @override
  BoxDecoration get cardDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: _yellow,
      );

  @override
  TextStyle get titleTextStyle => TextStyle(
      fontFamily: _primaryFontFamily,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: _purple);

  @override
  double get inputWidth => 243;

  @override
  BoxDecoration get buttonDecoration =>
      BoxDecoration(color: _purple, borderRadius: BorderRadius.circular(18));

  @override
  EdgeInsets get buttonPadding => EdgeInsets.all(10);

  @override
  TextStyle get buttonTextStyle => TextStyle(
      color: Colors.white,
      fontFamily: _primaryFontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w900);

  @override
  EdgeInsets get cardPadding => EdgeInsets.all(10);

  @override
  EdgeInsets get pagePadding => EdgeInsets.only(left: 17, right: 28);
}
