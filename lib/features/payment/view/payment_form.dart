import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/payment/bloc/payment_bloc.dart';
import 'package:yad/features/payment/widgets/widgets.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';


class PaymentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        height: context.read<ITheme>().dataInputCardTheme.cardHeight,
        width: context.read<ITheme>().dataInputCardTheme.cardWidth,
        decoration: context.read<ITheme>().dataInputCardTheme.decorationCard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: context.read<ITheme>().dataInputCardTheme.leftInputWidth,
                child:
                Container(
                    margin: context.read<ITheme>().dataInputCardTheme.marginTopLeftInput,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card number',
                          style: context.read<ITheme>().dataInputCardTheme.textStyleHeaderInput,
                        ),
                        CardNumberInput()
                      ],
                    )
                )
            ),
            SizedBox(
              width: context.read<ITheme>().dataInputCardTheme.leftInputWidth,
              child:
              Container(
                  margin: context.read<ITheme>().dataInputCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiration date',
                        style: context.read<ITheme>().dataInputCardTheme.textStyleHeaderInput,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExpirationMonthInput(),
                          ExpirationYearInput()
                        ],
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              width: context.read<ITheme>().dataInputCardTheme.leftInputWidth,
              child:
              Container(
                  margin: context.read<ITheme>().dataInputCardTheme.marginLeftInput,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card holder',
                        style:
                        context.read<ITheme>().dataInputCardTheme.textStyleHeaderInput,
                      ),
                      CardHolderInput()
                    ],
                  )
              ),
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
                          style: context.read<ITheme>().dataInputCardTheme.textStyleHeaderInput,
                        ),
                        CvcCvvInput()
                      ],
                    )
                )
            ),
            Align(
                alignment: Alignment.center,
                child: PayButton()
            )
          ],
        ),
      ),
    );
  }
}