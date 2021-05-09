import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/models/models.dart';
import 'package:yad/widgets/dish_card.dart';

class DishScrollList extends StatefulWidget {
  @override
  _DishScrollListState createState() => _DishScrollListState();
}

class _DishScrollListState extends State<DishScrollList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocBuilder<DishListBloc, DishListState>(builder: (context, state) {
      switch (state.status) {
        case DishListStatus.failure:
          return const Center(child: Text('failed to fetch dishes'));
        case DishListStatus.success:
          if (state.dishes.isEmpty) {
            return const Center(child: Text('no dishes'));
          }
          return Expanded(
              child: Container(
                  width: theme.dishCardTheme.cardWidth,
                  margin: theme.dishListTheme.marginDishList,
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        Dish dish = state.dishes[index];
                        return DishCard(
                            header: dish.title,
                            description: dish.description,
                            isCountingDishes: false,
                            dishCost: dish.price);
                      },
                      itemCount: state.dishes.length,
                      scrollDirection: Axis.vertical)));
        default:
          return const Center(child: CircularProgressIndicator());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
