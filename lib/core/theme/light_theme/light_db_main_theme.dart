part of 'light_theme.dart';

class LightDbMainTheme extends IDbMainTheme {
  @override
  EdgeInsetsGeometry get addressPadding => EdgeInsets.only(left: 12);

  @override
  TextStyle get addressTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _purple,
      );

  @override
  EdgeInsetsGeometry get cardPadding => EdgeInsets.all(15);

  @override
  IconData get collapsedIcon => Icons.settings;

  @override
  IconData get expandedIcon => Icons.save;

  @override
  TextStyle get headerTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 26,
        fontWeight: FontWeight.w900,
        color: _purple,
      );

  @override
  Color get iconColor => Colors.black;

  @override
  EdgeInsetsGeometry get orderPadding => EdgeInsets.zero;

  @override
  TextStyle get orderStatusTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 13,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      );

  @override
  TextStyle get orderTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 26,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      );

  @override
  Decoration get ordersDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: _orange,
      );

  @override
  EdgeInsetsGeometry get pagePadding =>
      EdgeInsets.only(left: 18, right: 27, top: 28);

  @override
  Decoration get statusDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: _yellow,
      );

  @override
  TextStyle get workStatusTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 26,
        fontWeight: FontWeight.w900,
        color: _purple,
      );

  @override
  TextStyle get titleTextStyle => TextStyle(
        fontFamily: _primaryFontFamily,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: _purple,
      );
}
