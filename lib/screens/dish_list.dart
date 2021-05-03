import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/widgets/dish_card.dart';


class DishList extends StatelessWidget {

  final String header;
  final LightTheme _lightTheme;

  DishList({
    required this.header,
}) : _lightTheme = LightTheme();

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topCenter, child: Container(
      margin: _lightTheme.dishListTheme.marginDishList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: _lightTheme.dishListTheme.marginTextHeader,
              child: Text(
                header,
                style: _lightTheme.dishListTheme.textStyleHeader,
              )
          ),
          Row(

          ),
          Row(

          ),
          DishCard(header: 'Smoking beaf',
              description: 'Traditional Ukranian dish, '
                  'Soup with meat anvegetables',
              isCountingDishes: false, dishCost: 12.00)
        ],
      ),
    )
    );
  }
}