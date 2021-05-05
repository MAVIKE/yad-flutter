part of 'i_theme.dart';

abstract class IRegistrationCardTheme {
  double get cardHeight;
  double get cardWidth;
  BoxDecoration get decorationCard;
  double get inputWidth;
  TextStyle get textStyleHeaderInput;
  double get inputHeight;
  InputDecoration inputDecoration(String hintText, bool invalid);
  double get streetInputWidth;
  double get houseNumberInputWidth;
  double get smallInputWidth;
  TextStyle get textStyleButton;
  TextStyle get textStyleHouseNumber;
  double get buttonWidth;
  double get buttonHeight;
  BoxDecoration get decorationButton;
  EdgeInsetsGeometry get marginButton;
  EdgeInsetsGeometry get marginRightInput;
  EdgeInsetsGeometry get marginLeftInput;
  EdgeInsetsGeometry get marginTopLeftInput;
}
