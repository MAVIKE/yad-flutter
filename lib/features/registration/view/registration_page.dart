import 'package:flutter/material.dart';

import 'package:yad/features/registration/bloc/registration_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'registration_form.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocProvider(
        create: (context) =>
            RegisterBloc(makePaymentRepo: RepositoryProvider.of(context)),
        child: BlocProvider(
            create: (context) {
              return RegisterBloc(
                registerBloc: BlocProvider.of<RegisterBloc>(context),
              );
            },
            child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: theme.registrationCardTheme.marginRegistration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: theme
                              .registrationCardTheme.marginTextRegistration,
                          child: Text(
                            'Registration',
                            style: theme
                                .registrationCardTheme.textStyleRegistration,
                          )),
                      RegistrationForm()
                    ],
                  ),
                ))));
  }
}
