import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/widgets/yad_expansion_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/widgets/yad_input.dart';

class AddressInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return Container(
        margin: theme.profileTheme.marginForm,
        child: YadExpansionTile(
          titleBuilder: (ctx, isExpanded, _) => Text(
            "Delivery Address",
            style: theme.profileTheme.styleFormsTitle,
          ),
          trailingBuilder: (ctx, isExpanded, _) => !isExpanded
              ? Icon(theme.profileTheme.expandIconExpanded,
                  color: theme.profileTheme.expandIconColor)
              : Icon(theme.profileTheme.expandIcon,
                  color: theme.profileTheme.expandIconColor),
          decoration: BoxDecoration(
              color: theme.profileTheme.addressBackground,
              borderRadius: theme.profileTheme.formsBorderRadius),
          body: Container(
            margin: theme.profileTheme.marginInputs,
            child: Column(children: [
              Container(
                margin: theme.profileTheme.marginInputsRight,
                child: YadInput(
                  label: "Name",
                ),
              ),
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Row(
                    children: [
                      YadInput(
                        label: "Street",
                      ),
                      YadInput(
                        label: "House",
                      )
                    ],
                  ))
            ]),
          ),
        ));
  }
}
