part of "i_theme.dart";

abstract class IDishCardTheme {
  double get cardHeight;
  double get cardWidth;
  BoxDecoration get shadowCard;
  Color get colorCard;
  ShapeBorder get shapeCard;
  double get photoWidth;
  double get photoHeight;
  BorderRadius get widgetBorderRadius;
  TextStyle get titleTextStyle;
  TextStyle get subtitleTextStyle;
  TextStyle get dishCostTextStyle;
  BoxConstraints get countButtonShape;
  Color get countButtonColor;
  TextStyle get dishCount;
  TextStyle get orderedTextStyle;
  TextStyle get orderTextStyle;
}