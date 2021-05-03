part of 'light_theme.dart';

class LightDishListTheme implements IDishListTheme {
  @override
  EdgeInsetsGeometry get marginDishList => EdgeInsets.only(top: 28);

  @override
  EdgeInsetsGeometry get marginTextHeader => EdgeInsets.only(bottom: 28);

  @override
  TextStyle get textStyleHeader => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 30
  );
}