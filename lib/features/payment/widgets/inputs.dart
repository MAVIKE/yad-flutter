import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/payment/bloc/payment_bloc.dart';

import '../../../core/theme/i_theme/i_theme.dart';

class CardNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) =>
      previous.cardNumber != current.cardNumber,
      builder: (context, state) {
        return SizedBox(
            height: context.read<ITheme>().dataInputCardTheme.inputHeight,
            child: TextField(
              key: const Key('paymentForm_cardNumberInput_textField'),
              decoration:
              context.read<ITheme>().dataInputCardTheme.inputDecoration(
                'Card Number', state.cardNumber.invalid),
              onChanged: (cardNumber) =>
                  context.read<PaymentBloc>().add(PaymentCardNumberChanged(cardNumber)),
            )
        );
      },
    );
  }
}

class ExpirationMonthInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) =>
      previous.expirationMonth != current.expirationMonth,
      builder: (context, state) {
        return SizedBox(
            width:
            context.read<ITheme>().dataInputCardTheme.expirationDateInputWidth,
            height: context.read<ITheme>().dataInputCardTheme.inputHeight,
            child: TextField(
              key: const Key('paymentForm_expirationMonthInput_textField'),
              decoration:
              context.read<ITheme>().dataInputCardTheme.inputDecoration(
                  'Expiration Month', state.expirationMonth.invalid
              ),
              onChanged: (expirationMonth) =>
                  context.read<PaymentBloc>().add(PaymentExpirationMonthChanged(expirationMonth)),
            )
        );
      },
    );
  }
}

class ExpirationYearInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) =>
      previous.expirationYear != current.expirationYear,
      builder: (context, state) {
        return SizedBox(
            width:
            context.read<ITheme>().dataInputCardTheme.expirationDateInputWidth,
            height: context.read<ITheme>().dataInputCardTheme.inputHeight,
            child: TextField(
              key: const Key('paymentForm_expirationYearInput_textField'),
              decoration:
              context.read<ITheme>().dataInputCardTheme.inputDecoration(
                  'Expiration Year', state.expirationYear.invalid
              ),
              onChanged: (expirationYear) =>
                  context.read<PaymentBloc>().add(PaymentExpirationYearChanged(expirationYear)),
            )
        );
      },
    );
  }
}

class CardHolderInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) =>
      previous.cardHolder != current.cardHolder,
      builder: (context, state) {
        return SizedBox(
            height: context.read<ITheme>().dataInputCardTheme.inputHeight,
            child: TextField(
              key: const Key('paymentForm_cardHolderInput_textField'),
              decoration:
              context.read<ITheme>().dataInputCardTheme.inputDecoration(
                  'Card Holder', state.cardHolder.invalid
              ),
              onChanged: (cardHolder) =>
                  context.read<PaymentBloc>().add(PaymentCardHolderChanged(cardHolder)),
            )
        );
      },
    );
  }
}

class CvcCvvInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) =>
      previous.cvcCvv != current.cvcCvv,
      builder: (context, state) {
        return SizedBox(
            width: context.read<ITheme>().dataInputCardTheme.rightInputWidth,
            height: context.read<ITheme>().dataInputCardTheme.inputHeight,
            child: TextField(
              key: const Key('paymentForm_cvcCvvInput_textField'),
              decoration:
              context.read<ITheme>().dataInputCardTheme.inputDecoration(
                  'Cvc/Cvv', state.cvcCvv.invalid
              ),
              onChanged: (cvcCvv) =>
                  context.read<PaymentBloc>().add(PaymentCvcCvvChanged(cvcCvv)),
            )
        );
      },
    );
  }
}