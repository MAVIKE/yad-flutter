import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/widgets/dish_card.dart';

class RestaurantCard extends StatelessWidget {
  final ImageProvider _photo;
  final String header;

  RestaurantCard({ImageProvider? photo, required this.header})
      : _photo = photo ?? AssetImage('assets/restaurant_0.jpg');

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();

    return Container(
        height: theme.restaurantCardTheme.cardHeight,
        child: Card(
            color: theme.restaurantCardTheme.colorCard,
            shape: theme.restaurantCardTheme.shapeCard,
            child: ListTile(
              title: Container(
                width: theme.restaurantCardTheme.photoWidth,
                height: theme.restaurantCardTheme.photoHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: theme.restaurantCardTheme.widgetBorderRadius,
                  image: DecorationImage(
                    image: _photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subtitle: Text(
                this.header,
                style: theme.restaurantCardTheme.subtitleTextStyle,
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