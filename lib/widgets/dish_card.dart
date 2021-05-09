import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/features/cart/bloc/cart_list_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/models/dish.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DishCard extends StatelessWidget {
  final Dish dish;
  final bool isCountingDishes;

  DishCard({required this.dish,
    required this.isCountingDishes
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return Container(
      height: theme.dishCardTheme.cardHeight,
      width: theme.dishCardTheme.cardWidth,
      decoration: theme.dishCardTheme.shadowCard,
      child: Card(
        color: theme.dishCardTheme.colorCard,
        shape: theme.dishCardTheme.shapeCard,
        child: ListTile(
          leading: Container(
            width: theme.dishCardTheme.photoWidth,
            height: theme.dishCardTheme.photoHeight,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: theme.dishCardTheme.widgetBorderRadius,
              image: DecorationImage(
                image: dish.photo ?? AssetImage('assets/food_example.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            dish.title,
            textAlign: TextAlign.left,
            style: theme.dishCardTheme.titleTextStyle,
          ),
          subtitle: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  dish.description,
                  textAlign: TextAlign.left,
                  style: theme.dishCardTheme.subtitleTextStyle,
                ),
              ),
              isCountingDishes
                  ? _CountingDishes(lightTheme: theme, dish: dish)
                  : _OrderedOrNot(lightTheme: theme, dish: dish),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountingDishes extends StatefulWidget {
  final Dish dish;
  final int dishesCount;
  final ITheme lightTheme;

  _CountingDishes({required this.lightTheme, required this.dish, this.dishesCount = 0});

  @override
  _CountingDishesState createState() =>
      _CountingDishesState(dishesCount: dishesCount,
          lightTheme: lightTheme, dish: dish);
}

class _CountingDishesState extends State<_CountingDishes> {
  final Dish dish;
  int dishesCount;
  final ITheme lightTheme;

  _CountingDishesState({required this.dishesCount,
    required this.lightTheme,
    required this.dish});

  @override
  Widget build(BuildContext context) {
    final cartListBloc = context.read<CartListBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$ ' + (dish.price * dishesCount).toString(),
          textAlign: TextAlign.left,
          style: lightTheme.dishCardTheme.dishCostTextStyle,
        ),
        Row(children: [
          RawMaterialButton(
              onPressed: () {
                setState(() {
                  if (dishesCount > 0) {
                    dishesCount -= 1;
                  }
                  else {
                    cartListBloc.add(CartDropDish(dish));
                  }
                });
              },
              constraints: lightTheme.dishCardTheme.countButtonShape,
              fillColor: lightTheme.dishCardTheme.countButtonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: lightTheme.dishCardTheme.widgetBorderRadius),
              child: Icon(Icons.remove, size: 26, color: Colors.white)),
          RawMaterialButton(
              onPressed: () {
                setState(() {
                  dishesCount += 1;
                });
              },
              constraints: lightTheme.dishCardTheme.countButtonShape,
              fillColor: lightTheme.dishCardTheme.countButtonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: lightTheme.dishCardTheme.widgetBorderRadius),
              child: Icon(Icons.add, size: 26, color: Colors.white)),
          Text(
            '$dishesCount',
            textAlign: TextAlign.right,
            style: lightTheme.dishCardTheme.dishCount,
          ),
        ])
      ],
    );
  }
}

class _OrderedOrNot extends StatelessWidget {
  Dish dish;
  final ITheme lightTheme;

  _OrderedOrNot({required this.dish, required this.lightTheme});

  @override
  Widget build(BuildContext context) {
    final cartListBloc = context.read<CartListBloc>();
    bool isOrdered = cartListBloc.state.cart.dishes.contains(dish);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$ ${dish.price}',
          textAlign: TextAlign.left,
          style: lightTheme.dishCardTheme.dishCostTextStyle,
        ),
        TextButton(
            onPressed: () {
                if (!isOrdered) {
                  cartListBloc.add(CartAddDish(dish));
                }
                else {
                  cartListBloc.add(CartDropDish(dish));
                }
            },
            child: isOrdered
                ? Text(
              'Ordered',
              style: lightTheme.dishCardTheme.orderedTextStyle,
            )
                : Text(
              'Order',
              style: lightTheme.dishCardTheme.orderTextStyle,
            ))
      ],
    );
  }
}