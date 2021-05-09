part of 'light_theme.dart';

class LightRestaurantCardTheme implements IRestaurantCardTheme {
  @override
  double get cardHeight => 190;

  @override
  double get cardWidth => 332;

  @override
  BoxDecoration get shadowCard => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.25),
            offset: Offset(0.0, 2.0),
            spreadRadius: 4.0,
          ),
        ],
      );

  @override
  Color get colorCard => Colors.white;

  @override
  ShapeBorder get shapeCard => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      );

  @override
  double get photoWidth => 332;

  @override
  double get photoHeight => 130;

  @override
  BorderRadius get widgetBorderRadius => BorderRadius.circular(12.0);

  @override
  get fontFamily => TextStyle(fontFamily: "Roboto");

  @override
  TextStyle get titleTextStyle => TextStyle(
      color: _purple,
      fontFamily: fontFamily.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16);

  @override
  TextStyle get subtitleTextStyle => TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.73),
      fontFamily: fontFamily.fontFamily,
      fontWeight: FontWeight.normal,
      fontSize: 24);
}
