import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/domain/models/order.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/features/db_main/bloc/orders_bloc.dart';
import 'package:yad/widgets/yad_expansion_tile.dart';

class OrdersTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>().dbMainTheme;
    return YadExpansionTile(
      decoration: theme.ordersDecoration,
      titleBuilder: (ctx, isExpanded, _) => Text(
        "My Orders",
        style: theme.headerTextStyle,
      ),
      trailingBuilder: (ctx, isExpanded, _) {
        if (isExpanded) {
          return Icon(theme.expandedIcon, color: theme.iconColor);
        } else {
          return Icon(theme.collapsedIcon, color: theme.iconColor);
        }
      },
      body: Container(
        padding: theme.cardPadding,
        width: double.infinity,
        child: BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: state.orders.map((e) => _OrderView(e)).toList(),
          );
        }),
      ),
    );
  }
}

class _OrderView extends StatelessWidget {
  final Order order;
  _OrderView(this.order);
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>().dbMainTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: theme.orderPadding,
          child: Row(
            children: [
              Text(
                "Order #${order.id}",
                style: theme.orderTextStyle,
              ),
              VerticalDivider(),
              Text(
                "${order.status}",
                style: theme.orderStatusTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: theme.addressPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("From: ${order.from}", style: theme.addressTextStyle),
              Text("To: ${order.to}", style: theme.addressTextStyle),
            ],
          ),
        )
      ],
    );
  }
}
