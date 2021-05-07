import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/registration/bloc/registration_bloc.dart';

import '../../../core/theme/i_theme/i_theme.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Container(
                width: theme.registrationCardTheme.buttonWidth,
                height: theme.registrationCardTheme.buttonHeight,
                decoration: theme.registrationCardTheme.decorationButton,
                margin: theme.registrationCardTheme.marginButton,
                child: TextButton(
                  key: const Key('registrationForm_continue_raisedButton'),
                  child: Text(
                    'Register',
                    style: theme.registrationCardTheme.textStyleButton,
                  ),
                  onPressed: state.status.isValidated
                      ? () {
                          context
                              .read<RegistrationBloc>()
                              .add(const RegistrationSubmitted());
                        }
                      : null,
                ));
      },
    );
  }
}
