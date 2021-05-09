import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/cart/bloc/cart_list_bloc.dart';
import 'package:yad/features/cart/view/cart_proceed_part.dart';
import 'package:yad/features/cart/view/cart_scroll_list.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocProvider(
        create: (context) => CartListBloc(
              cartRepo: RepositoryProvider.of(context),
            ),
        child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: theme.cartTheme.marginCartPage,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: theme.cartTheme.marginTitle,
                      child: Text(
                        "Cart",
                        style: theme.cartTheme.styleTitle,
                      )),
                  CartScrollList(),
                  CartProceedPart(),
                ],
              ),
            )));
  }
}
