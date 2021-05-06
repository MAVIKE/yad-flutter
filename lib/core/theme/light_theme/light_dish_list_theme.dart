part of 'light_theme.dart';

class LightDishListTheme implements IDishListTheme {
  @override
  double get dishCategoryWidth => 120;

  @override
  double get dishCategoryHeight => 76;

  @override
  BoxDecoration get dishCategoryDecoration => BoxDecoration(
      boxShadow: [
        BoxShadow(
          color:Colors.white.withOpacity(0.25),
          offset: Offset(0.0, 2.0),
          spreadRadius: 4.0,
        ),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
          colors: [Color.fromRGBO(187, 0, 99, 1),
            Color.fromRGBO(197, 25, 115, 1)],
          ),
      borderRadius: BorderRadius.circular(18.0)
  );

  @override
  EdgeInsetsGeometry get dishCategoryMargin => EdgeInsets.only(left: 12);

  @override
  TextStyle get textStyleCategoryName => TextStyle(
      color: Colors.white,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 20
  );

  @override
  EdgeInsetsGeometry get marginDishListPage => EdgeInsets.only(top: 8);

  @override
  EdgeInsetsGeometry get marginDishList => EdgeInsets.only(left: 12, top: 22);

  @override
  EdgeInsetsGeometry get marginRestaurantName => EdgeInsets.only(bottom: 10,
  left: 12);

  @override
  TextStyle get textStyleRestaurantName => TextStyle(
      color: _purple,
      fontFamily: "Roboto",
      fontWeight: FontWeight.bold,
      fontSize: 30
  );
}