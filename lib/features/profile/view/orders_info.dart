import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/widgets/yad_expansion_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return Container(
      margin: theme.profileTheme.marginForm,
      child: YadExpansionTile(
        titleBuilder: (ctx, isExpanded, _) => Text(
          "My Orders",
          style: theme.profileTheme.styleFormsTitle,
        ),
        trailingBuilder: (ctx, isExpanded, _) => !isExpanded
            ? Icon(theme.profileTheme.expandIconExpanded,
                color: theme.profileTheme.expandIconColor)
            : Icon(theme.profileTheme.expandIcon,
                color: theme.profileTheme.expandIconColor),
        decoration: BoxDecoration(
            color: theme.profileTheme.ordersBackground,
            borderRadius: theme.profileTheme.formsBorderRadius),
        body: Container(
          margin: theme.profileTheme.marginInputs,
          child: Container(
            child: Column(
              children: [
                Row(
                  //margin: theme.profileTheme.marginOrdersRight,
                  children: [
                    Text(
                      "Order #124",
                      style: theme.profileTheme.styleOrderTitle,
                    ),
                    Container(
                        margin: theme.profileTheme.marginStageLeft,
                        child: Text(
                          "Cooking",
                          style: theme.profileTheme.styleStageTitle,
                        ))
                  ],
                ),
                Text(
                  "Smoking beaf                            \$ 12.00",
                  style: theme.profileTheme.styleDishTitle,
                ),
                Text(
                  "Burger                                       \$ 3.00",
                  style: theme.profileTheme.styleDishTitle,
                ),
                Row(
                  children: [
                    Text(
                      "Order #177",
                      style: theme.profileTheme.styleOrderTitle,
                    ),
                    Container(
                        margin: theme.profileTheme.marginStageLeft,
                        child: Text(
                          "Delivered",
                          style: theme.profileTheme.styleStageTitle,
                        ))
                  ],
                ),
                Text(
                  "Smoking beaf                            \$ 12.00",
                  style: theme.profileTheme.styleDishTitle,
                ),
                Text(
                  "Burger                                       \$ 3.00",
                  style: theme.profileTheme.styleDishTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
