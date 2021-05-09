part of 'light_theme.dart';

class LightCartTheme implements ICartTheme {
  @override
  EdgeInsetsGeometry get marginCartPage => EdgeInsets.only(top: 8);

  @override
  EdgeInsetsGeometry get marginDishList =>
      EdgeInsets.only(left: 18, top: 10, right: 25);

  @override
  EdgeInsetsGeometry get marginTitle => EdgeInsets.only(top: 20, left: 21);

  @override
  EdgeInsetsGeometry get paddingProceed => EdgeInsets.only(top: 34);

  @override
  EdgeInsetsGeometry get marginButton =>
      EdgeInsets.only(bottom: 21, top: 18, left: 28, right: 26);

  @override
  EdgeInsetsGeometry get marginTextTotal => EdgeInsets.only(left: 22);

  @override
  EdgeInsetsGeometry get marginTotalValue => EdgeInsets.only(right: 26);

  @override
  TextStyle get styleTitle => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 30);

  @override
  TextStyle get styleButtonText => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 23);

  @override
  Decoration get decorationButton => BoxDecoration(
      color: Color.fromRGBO(0xFB, 0xBB, 0, 1),
      borderRadius: BorderRadius.circular(18.0));

  @override
  double get buttonWidth => 321.0;

  @override
  double get buttonHeight => 37.0;

  @override
  double get proceedHeight => 155.0;

  @override
  Decoration get decorationProceed => BoxDecoration(
      border: Border(
          top: BorderSide(
              color: Color.fromRGBO(0xE5, 0xE5, 0xE5, 1), width: 5.0)));
}
