import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';

class DishCard extends StatelessWidget {

  final String header;
  final String description;
  final bool isCountingDishes;
  final double dishCost;
  final ImageProvider _photo;
  final LightTheme _lightTheme;

  DishCard({
    required this.header,
    required this.description,
    required this.isCountingDishes,
    required this.dishCost,
    ImageProvider? photo,
  }): _photo = photo ?? AssetImage('assets/food_example.jpg'),
        _lightTheme = LightTheme();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _lightTheme.dishCardTheme.cardHeight,
      width: _lightTheme.dishCardTheme.cardWidth,
      decoration: _lightTheme.dishCardTheme.shadowCard,
      child: Card(
        color: _lightTheme.dishCardTheme.colorCard,
        shape: _lightTheme.dishCardTheme.shapeCard,
        child: ListTile(
            leading: Container(
              width: _lightTheme.dishCardTheme.photoWidth,
              height: _lightTheme.dishCardTheme.photoHeight,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: _lightTheme.dishCardTheme.widgetBorderRadius,
                image: DecorationImage(
                  image: _photo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              this.header,
              textAlign: TextAlign.left,
              style: _lightTheme.dishCardTheme.titleTextStyle,
            ),
            subtitle: Column(
              children: [Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.description,
                  textAlign: TextAlign.left,
                  style: _lightTheme.dishCardTheme.subtitleTextStyle,
                ),
              ),
                isCountingDishes? _CountingDishes(this._lightTheme, dishCost: this.dishCost) :
                _OrderedOrNot(this._lightTheme, dishCost: this.dishCost),
              ],
            ),
        ),
      ),
    );
  }
}

class _CountingDishes extends StatefulWidget {

  final double dishCost;
  final int dishesCount;
  final LightTheme lightTheme;

  _CountingDishes(this.lightTheme,
      {this.dishCost = 0.0, this.dishesCount = 0
  });

  @override
  _CountingDishesState createState() => _CountingDishesState(dishCost,
    dishesCount, lightTheme);
}

class _CountingDishesState extends State<_CountingDishes> {

  double dishCost;
  int dishesCount;
  final LightTheme lightTheme;

  _CountingDishesState(this.dishCost, this.dishesCount, this.lightTheme);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$ ' + (dishCost * dishesCount).toString(),
          textAlign: TextAlign.left,
          style: lightTheme.dishCardTheme.dishCostTextStyle,
        ),
        Row(children: [RawMaterialButton(
            onPressed: () {
              setState(() {
                if (dishesCount > 0) {
                  dishesCount -= 1;
                }
              });
            },
            constraints: lightTheme.dishCardTheme.countButtonShape,
            fillColor: lightTheme.dishCardTheme.countButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: lightTheme.dishCardTheme.widgetBorderRadius
            ),
            child: Icon(Icons.remove, size: 26, color: Colors.white)

        ),
        RawMaterialButton(
            onPressed: () {
              setState(() {
                dishesCount += 1;
              });
            },
            constraints: lightTheme.dishCardTheme.countButtonShape,
            fillColor: lightTheme.dishCardTheme.countButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: lightTheme.dishCardTheme.widgetBorderRadius
            ),
            child: Icon(Icons.add, size: 26, color: Colors.white)
        ),
        Text(
          '$dishesCount',
          textAlign: TextAlign.right,
          style: lightTheme.dishCardTheme.dishCount,
        ),])
      ],
    );
  }
}

class _OrderedOrNot extends StatefulWidget {

  final double dishCost;
  final bool isOrdered;
  final LightTheme lightTheme;

  _OrderedOrNot(this.lightTheme,
      {this.dishCost = 0.0, this.isOrdered = false,
      });

  @override
  _OrderedOrNotState createState() => _OrderedOrNotState(dishCost, isOrdered,
  lightTheme);
}

class _OrderedOrNotState extends State<_OrderedOrNot> {

  double dishCost;
  bool isOrdered;
  final LightTheme lightTheme;

  _OrderedOrNotState(this.dishCost, this.isOrdered, this.lightTheme);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$ $dishCost',
          textAlign: TextAlign.left,
          style: lightTheme.dishCardTheme.dishCostTextStyle,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                this.isOrdered = !this.isOrdered;
              });
            },
            child: this.isOrdered? Text(
              'Ordered',
              style: lightTheme.dishCardTheme.orderedTextStyle,
            ) : Text(
              'Order',
              style: lightTheme.dishCardTheme.orderTextStyle,
            )
        )
      ],
    );
  }
}