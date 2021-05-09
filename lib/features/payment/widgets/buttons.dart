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
        final theme = context.read<ITheme>();
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Container(
                width: theme.dataInputCardTheme.buttonWidth,
                height: theme.dataInputCardTheme.buttonHeight,
                decoration: theme.dataInputCardTheme.decorationButton,
                margin: theme.dataInputCardTheme.marginButton,
                child: TextButton(
                  key: const Key('paymentForm_continue_raisedButton'),
                  child: Text(
                    'Pay',
                    style: theme.dataInputCardTheme.textStyleButton,
                  ),
                  onPressed: state.status.isValidated
                      ? () {
                          context
                              .read<PaymentBloc>()
                              .add(const PaymentSubmitted());
                        }
                      : null,
                ));
      },
    );
  }
}
