import 'package:flutter/material.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/widgets/dish_card.dart';

class RestaurantCard extends StatelessWidget {
  final ImageProvider _photo;
  final String header;
  final LightTheme _lightTheme;

  RestaurantCard({ImageProvider? photo, required this.header})
      : _photo = photo ?? AssetImage('assets/restaurant_0.jpg'),
        _lightTheme = LightTheme();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _lightTheme.restaurantCardTheme.cardHeight,
        child: Card(
            color: _lightTheme.restaurantCardTheme.colorCard,
            shape: _lightTheme.restaurantCardTheme.shapeCard,
            child: ListTile(
              title: Container(
                width: _lightTheme.restaurantCardTheme.photoWidth,
                height: _lightTheme.restaurantCardTheme.photoHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius:
                      _lightTheme.restaurantCardTheme.widgetBorderRadius,
                  image: DecorationImage(
                    image: _photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subtitle: Text(
                this.header,
                style: _lightTheme.restaurantCardTheme.subtitleTextStyle,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DishCard(
                        header: 'header',
                        description: 'description',
                        isCountingDishes: true,
                        dishCost: 150),
                  ),
                );
              },
            )));
  }
}
