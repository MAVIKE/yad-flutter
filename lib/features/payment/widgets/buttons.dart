import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/payment/bloc/payment_bloc.dart';

import '../../../core/theme/i_theme/i_theme.dart';


class PayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Container(
            width: context.read<ITheme>().dataInputCardTheme.buttonWidth,
            height: context.read<ITheme>().dataInputCardTheme.buttonHeight,
            decoration: context.read<ITheme>().dataInputCardTheme.decorationButton,
            margin: context.read<ITheme>().dataInputCardTheme.marginButton,
            child: TextButton(
              key: const Key('paymentForm_continue_raisedButton'),
              child: Text(
                'Pay',
                style: context.read<ITheme>().dataInputCardTheme.textStyleButton,
              ),
              onPressed: state.status.isValidated
                  ? () {
                context.read<PaymentBloc>().add(const PaymentSubmitted());
              }
                  : null,
            )
        );
      },
    );
  }
}