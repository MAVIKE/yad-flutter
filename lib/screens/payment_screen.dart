import 'package:flutter/material.dart';
import 'package:yad/widgets/data_input_card.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';


class PaymentScreen extends StatelessWidget {

  final LightTheme _lightTheme;

  PaymentScreen(): _lightTheme = LightTheme();

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topCenter, child: Container(
      margin: _lightTheme.dataInputCardTheme.marginPayment,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: _lightTheme.dataInputCardTheme.marginTextPayment,
              child: Text(
                'Enter card',
                style: _lightTheme.dataInputCardTheme.textStylePayment,
              )
          ),
          DataInputCard()
        ],
      ),
    )
    );
  }
}