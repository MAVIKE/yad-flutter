import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/registration/bloc/registration_bloc.dart';
import 'package:yad/features/registration/widgets/widgets.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Registration Failure')),
            );
        }
      },
      child: Container(
        padding: cardTheme.pagePadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Registration",
                  style: cardTheme.titleTextStyle,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                decoration: cardTheme.cardDecoration,
                padding: cardTheme.cardPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameInput(),
                    PhoneNumberInput(),
                    EmailInput(),
                    Password1Input(),
                    Password2Input(),
                    /*
                    CityInput(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StreetInput(),
                        HouseNumberInput(),
                      ],
                    ),
                    Row(
                      children: [
                        BuildingInput(),
                        FloorInput(),
                        FlatInput(),
                        EntranceInput(),
                      ],
                    ),
                    */
                    RegisterButton()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
