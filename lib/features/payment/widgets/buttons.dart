import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/apps/delivery_user/pages/home_page.dart';
import 'package:yad/features/payment/bloc/payment_bloc.dart';

import '../../../core/theme/i_theme/i_theme.dart';

class PayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        if (state.status.isSubmissionSuccess) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()
              )
          );
        }
        return state.status.isSubmissionInProgress || state.status.isSubmissionSuccess
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
