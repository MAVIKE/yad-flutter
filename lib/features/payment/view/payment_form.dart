import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/payment/bloc/payment_bloc.dart';
import 'package:yad/features/payment/widgets/widgets.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';

class PaymentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocListener<PaymentBloc, PaymentState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Payment Failure')),
            );
        }
      },
      child: Container(
        height: theme.dataInputCardTheme.cardHeight,
        width: theme.dataInputCardTheme.cardWidth,
        decoration: theme.dataInputCardTheme.decorationCard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: theme.dataInputCardTheme.leftInputWidth,
                child: Container(
                    margin: theme.dataInputCardTheme.marginTopLeftInput,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card number',
                          style: theme.dataInputCardTheme.textStyleHeaderInput,
                        ),
                        CardNumberInput()
                      ],
                    ))),
            SizedBox(
              width: theme.dataInputCardTheme.leftInputWidth,
              child: Container(
                  margin: theme.dataInputCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiration date',
                        style: theme.dataInputCardTheme.textStyleHeaderInput,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExpirationMonthInput(),
                          ExpirationYearInput()
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: theme.dataInputCardTheme.leftInputWidth,
              child: Container(
                  margin: theme.dataInputCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card holder',
                        style: theme.dataInputCardTheme.textStyleHeaderInput,
                      ),
                      CardHolderInput()
                    ],
                  )),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: EdgeInsets.only(right: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVC/CVV',
                          style: theme.dataInputCardTheme.textStyleHeaderInput,
                        ),
                        CvcCvvInput()
                      ],
                    ))),
            Align(alignment: Alignment.center, child: PayButton())
          ],
        ),
      ),
    );
  }
}
