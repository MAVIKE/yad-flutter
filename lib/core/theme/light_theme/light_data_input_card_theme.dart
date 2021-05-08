part of 'light_theme.dart';

class LightDataInputCardTheme implements IDataInputCardTheme {
  @override
  double get cardHeight => 362;

  @override
  double get cardWidth => 330;

  @override
  BoxDecoration get decorationCard => BoxDecoration(
      color: Color.fromRGBO(251, 187, 0, 1),
      borderRadius: BorderRadius.circular(18.0));

  @override
  double get leftInputWidth => 238;

  @override
  TextStyle get textStyleHeaderInput => TextStyle(
      fontSize: 26,
      color: Color.fromRGBO(65, 14, 130, 1),
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900);

  @override
  double get inputHeight => 25;

  @override
  InputDecoration inputDecoration(String hintText, bool invalid) =>
      InputDecoration(
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide:
              invalid ? BorderSide(color: Colors.redAccent) : BorderSide.none,
          borderRadius: BorderRadius.circular(18.0),
        ),
        filled: true,
        labelStyle: TextStyle(fontSize: 12),
        labelText: '$hintText',
        //errorText: invalid ? 'invalid ' + '$hintText' : null,
      );

  @override
  double get expirationDateInputWidth => 111;

  @override
  double get rightInputWidth => 115;

  @override
  TextStyle get textStyleButton => TextStyle(
      fontSize: 26,
      color: Colors.white,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900);

  @override
  double get buttonWidth => 309;

  @override
  double get buttonHeight => 67;

  @override
  BoxDecoration get decorationButton => BoxDecoration(
      color: Color.fromRGBO(65, 14, 130, 1),
      borderRadius: BorderRadius.circular(18.0));

  @override
  EdgeInsetsGeometry get marginButton => EdgeInsets.only(bottom: 11);

  @override
  EdgeInsetsGeometry get marginRightInput => EdgeInsets.only(right: 32);

  @override
  EdgeInsetsGeometry get marginLeftInput => EdgeInsets.only(left: 8);

  @override
  EdgeInsetsGeometry get marginTopLeftInput =>
      EdgeInsets.only(left: 8, top: 21);

  @override
  TextStyle get textStylePayment => TextStyle(
        fontSize: 30,
        color: Color.fromRGBO(65, 14, 130, 1),
        fontFamily: "Roboto",
        fontWeight: FontWeight.bold,
      );

  @override
  EdgeInsetsGeometry get marginPayment => EdgeInsets.only(top: 28);

  @override
  EdgeInsetsGeometry get marginTextPayment => EdgeInsets.only(bottom: 11);
}
