import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/cart/bloc/cart_list_bloc.dart';
import 'package:yad/features/dish_list/models/models.dart';
import 'package:yad/widgets/dish_card.dart';

class CartScrollList extends StatefulWidget {
  @override
  _CartScrollList createState() => _CartScrollList();
}

class _CartScrollList extends State<CartScrollList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocBuilder<CartListBloc, CartListState>(builder: (context, state) {
      switch (state.status) {
        case CartListStatus.failure:
          return const Center(child: Text('failed to fetch dishes'));
        case CartListStatus.success:
          if (state.cart.dishes.isEmpty) {
            return const Center(child: Text('Your cart is empty'));
          }
          return Expanded(
              child: Container(
                  width: theme.dishCardTheme.cardWidth,
                  margin: theme.dishListTheme.marginDishList,
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        Dish dish = state.cart.dishes[index];
                        return DishCard(
                            header: dish.title,
                            description: dish.description,
                            isCountingDishes: true,
                            dishCost: dish.price);
                      },
                      itemCount: state.cart.dishes.length,
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
