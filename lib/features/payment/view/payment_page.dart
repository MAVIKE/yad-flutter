import 'package:flutter/material.dart';
import 'package:yad/features/cart/cart.dart';

import 'package:yad/features/payment/bloc/payment_bloc.dart';
import 'package:yad/features/make_payment/make_payment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'payment_form.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';

class PaymentPage extends StatelessWidget {

  final List<OrderItem> items;

  PaymentPage({required this.items});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            MakePaymentBloc(makePaymentRepo: RepositoryProvider.of(context)),
        child: BlocProvider(
            create: (context) {
              return PaymentBloc(
                makePaymentBloc: BlocProvider.of<MakePaymentBloc>(context),
                items: items
              );
            },
            child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin:
                      context.read<ITheme>().dataInputCardTheme.marginPayment,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: context
                              .read<ITheme>()
                              .dataInputCardTheme
                              .marginTextPayment,
                          child: Text(
                            'Enter card',
                            style: context
                                .read<ITheme>()
                                .dataInputCardTheme
                                .textStylePayment,
                          )),
                      PaymentForm()
                    ],
                  ),
                ))));
  }
}
