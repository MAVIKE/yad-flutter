part of 'light_theme.dart';

class LightRegistrationCardTheme implements IRegistrationCardTheme {
  @override
  double get inputWidth => 278;

  @override
  TextStyle get textStyleHeaderInput => TextStyle(
      fontSize: 26,
      color: Color.fromRGBO(65, 14, 130, 1),
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900);

  @override
  TextStyle get textStyleHouseNumber => TextStyle(
      fontSize: 16,
      color: Color.fromRGBO(65, 14, 130, 1),
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900);

  @override
  double get streetInputWidth => 138;

  @override
  double get houseNumberInputWidth => 140;

  @override
  double get smallInputWidth => 70;

  @override
  TextStyle get textStyleButton => TextStyle(
      fontSize: 26,
      color: Colors.white,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900);

  @override
  double get buttonWidth => 309;

  @override
  double get buttonHeight => 67;

  @override
  BoxDecoration get decorationButton => BoxDecoration(
      color: Color.fromRGBO(65, 14, 130, 1),
      borderRadius: BorderRadius.circular(18.0));

  @override
  EdgeInsetsGeometry get marginButton => EdgeInsets.only(bottom: 11);

  @override
  EdgeInsets get pagePadding => EdgeInsets.only(left: 17, right: 28);

  @override
  EdgeInsets get cardPadding => EdgeInsets.all(10);

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
}
