import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/view/category_scroll_list.dart';
import 'package:yad/features/dish_list/view/dish_scroll_list.dart';


class DishListPage extends StatelessWidget {

  final String restaurantName;
  final int restaurantId;

  DishListPage({
    required this.restaurantName,
    required this.restaurantId,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return Align(alignment: Alignment.topCenter, child: Container(
          margin: theme.dishListTheme.marginDishListPage,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: theme.dishListTheme.marginRestaurantName,
                  child: Text(
                    restaurantName,
                    style: theme.dishListTheme.textStyleRestaurantName,
                  )
              ),
              CategoryScrollList(),
              DishScrollList(restaurantId)
            ],
          ),
        )
    );
  }
}