import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/restaurant_list/bloc/restaurant_list_bloc.dart';
import 'package:yad/features/restaurant_list/models/models.dart';
import 'package:yad/widgets/restaurant_card.dart';

class RestaurantScrollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocBuilder<RestaurantListBloc, RestaurantListState>(
        builder: (context, state) {
      switch (state.status) {
        case RestaurantListStatus.failure:
          return const Center(child: Text('failed to fetch restaurants'));
        case RestaurantListStatus.success:
          if (state.restaurants.isEmpty) {
            return const Center(child: Text('no restaurants'));
          }
          return Expanded(
              child: Container(
                  width: theme.restaurantCardTheme.cardWidth,
                  margin: theme.restaurantListTheme.marginRestaurantList,
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        Restaurant restaurant = state.restaurants[index];
                        return RestaurantCard(header: restaurant.name,
                          restaurantId: restaurant.id,);
                      },
                      itemCount: state.restaurants.length,
                      scrollDirection: Axis.vertical)));
        default:
          return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
