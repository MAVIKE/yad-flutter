part of 'light_theme.dart';

class LightDishCardTheme implements IDishCardTheme {
  @override
  double get cardHeight => 120;

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
  double get photoWidth => 90;

  @override
  double get photoHeight => 90;

  @override
  BorderRadius get widgetBorderRadius => BorderRadius.circular(12.0);

  @override
  TextStyle get titleTextStyle => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500,
      fontSize: 16);

  @override
  TextStyle get subtitleTextStyle => TextStyle(
      color: Color.fromRGBO(99, 72, 132, 0.73),
      fontFamily: "Roboto",
      fontWeight: FontWeight.normal,
      fontSize: 12);

  @override
  TextStyle get dishCostTextStyle => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 14);

  @override
  BoxConstraints get countButtonShape => BoxConstraints.tight(Size(34, 34));

  @override
  Color get countButtonColor => Color.fromRGBO(182, 15, 109, 1);

  @override
  TextStyle get dishCount => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 14);

  @override
  TextStyle get orderedTextStyle => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 14);

  @override
  TextStyle get orderTextStyle => TextStyle(
      color: Color.fromRGBO(182, 15, 109, 1),
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 14);
}
