part of "i_theme.dart";

abstract class IDbMainTheme {
  Decoration get statusDecoration;
  Decoration get ordersDecoration;
  IconData get collapsedIcon;
  IconData get expandedIcon;
  Color get iconColor;
  TextStyle get headerTextStyle;
  TextStyle get workStatusTextStyle;
  TextStyle get orderStatusTextStyle;
  TextStyle get orderTextStyle;
  TextStyle get addressTextStyle;
  TextStyle get titleTextStyle;
  EdgeInsetsGeometry get pagePadding;
  EdgeInsetsGeometry get cardPadding;
  EdgeInsetsGeometry get orderPadding;
  EdgeInsetsGeometry get addressPadding;
}
