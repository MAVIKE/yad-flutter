part of "i_theme.dart";

abstract class IProfileTheme {
  Color get background;
  Color get foreground;
  Color get expandIconColor;
  IconData get expandIcon;
  IconData get expandIconExpanded;

  Color get userBackground;
  Color get userForeground;
  Color get addressBackground;
  Color get addressForeground;
  Color get ordersBackground;
  Color get ordersForeground;
  Color get passwordBackground;
  Color get passwordForeground;

  BorderRadius get formsBorderRadius;

  EdgeInsetsGeometry get marginFormsList;
  EdgeInsetsGeometry get marginForm;
  EdgeInsetsGeometry get marginInputs;
  EdgeInsetsGeometry get marginInputsRight;

  TextStyle get styleFormsTitle;
  TextStyle get styleTitle;
}
