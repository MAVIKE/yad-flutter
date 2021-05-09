import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/features/cart/cart.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/view/dish_list_page.dart';
import 'package:yad/widgets/dish_card.dart';
import 'package:yad/widgets/yad_scaffold.dart';

class RestaurantCard extends StatelessWidget {
  final ImageProvider _photo;
  final String header;
  final int restaurantId;

  RestaurantCard({ImageProvider? photo, required this.header,
  required this.restaurantId})
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
                    builder: (context) =>
                    MultiBlocProvider(
                      providers: [
                        BlocProvider(create: (context) => DishListBloc(
                                dishListRepo: RepositoryProvider.of(context),
                                restaurantId: restaurantId
                            )),
                        BlocProvider(create: (context) => CartListBloc(
                          cartRepo: RepositoryProvider.of(context),
                        )),
                      ],
                        child:
                        PageView(
                            children: [
                              YadScaffold(
                                  isCourier: false,
                                  body: DishListPage(restaurantName: header,
                                      restaurantId: restaurantId),),
                              YadScaffold(
                                  isCourier: false,
                                  body: CartPage()),
                            ]
                        ))
                  )
                );
              },
            )));
  }
}