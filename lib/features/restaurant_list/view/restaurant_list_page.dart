import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/restaurant_list/bloc/restaurant_list_bloc.dart';
import 'package:yad/features/restaurant_list/view/restaurant_scroll_list.dart';

class RestaurantListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocProvider(
        create: (context) => RestaurantListBloc(
              restaurantListRepo: RepositoryProvider.of(context),
            ),
        child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: theme.restaurantListTheme.marginRestaurantListPage,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [RestaurantScrollList()],
              ),
            )));
  }
}
