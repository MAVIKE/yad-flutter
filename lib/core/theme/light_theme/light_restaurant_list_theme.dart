part of 'light_theme.dart';

class LightRestaurantListTheme implements IRestaurantListTheme {
  @override
  EdgeInsetsGeometry get marginRestaurantListPage => EdgeInsets.only(top: 8);

  @override
  EdgeInsetsGeometry get marginRestaurantList =>
      EdgeInsets.only(left: 12, top: 22);

  @override
  EdgeInsetsGeometry get marginRestaurantName =>
      EdgeInsets.only(bottom: 10, left: 12);

  @override
  TextStyle get textStyleRestaurantName => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 30);
}
