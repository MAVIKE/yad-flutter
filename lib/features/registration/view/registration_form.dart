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
        height: theme.registrationCardTheme.cardHeight,
        width: theme.dataInputCardTheme.cardWidth,
        decoration: theme.dataInputCardTheme.decorationCard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: theme.registrationCardTheme.inputWidth,
                child: Container(
                    margin: theme.registrationCardTheme.marginTopLeftInput,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style:
                              theme.registrationCardTheme.textStyleHeaderInput,
                        ),
                        NameInput(),
                      ],
                    ))),
            SizedBox(
              width: theme.registrationCardTheme.inputWidth,
              child: Container(
                  margin: theme.registrationCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone number',
                        style: theme.registrationCardTheme.textStyleHeaderInput,
                      ),
                      PhoneNumberInput(),
                    ],
                  )),
            ),
            SizedBox(
                width: theme.registrationCardTheme.inputWidth,
                child: Container(
                    margin: theme.registrationCardTheme.marginLeftInput,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style:
                              theme.registrationCardTheme.textStyleHeaderInput,
                        ),
                        Password1Input(),
                      ],
                    ))),
            SizedBox(
                width: theme.registrationCardTheme.inputWidth,
                child: Container(
                    margin: theme.registrationCardTheme.marginLeftInput,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style:
                              theme.registrationCardTheme.textStyleHeaderInput,
                        ),
                        Password2Input(),
                      ],
                    ))),
            SizedBox(
              width: theme.registrationCardTheme.inputWidth,
              child: Container(
                  margin: theme.registrationCardTheme.marginLeftInput,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: theme.registrationCardTheme.textStyleHeaderInput,
                      ),
                      CityInput(),
                    ],
                  )),
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Street',
                      style: theme.registrationCardTheme.textStyleHeaderInput,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110),
                      child: Text(
                        'House number',
                        style: theme.registrationCardTheme.textStyleHouseNumber,
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StreetInput(),
                    HouseNumberInput(),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Building',
                      style: theme.registrationCardTheme.textStyleHouseNumber,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Floor',
                        style: theme.registrationCardTheme.textStyleHouseNumber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 48),
                      child: Text(
                        'Flat',
                        style: theme.registrationCardTheme.textStyleHouseNumber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Entrance',
                        style: theme.registrationCardTheme.textStyleHouseNumber,
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildingInput(),
                  FloorInput(),
                  FlatInput(),
                  EntranceInput(),
                ],
              ),
            ),
            Align(alignment: Alignment.center, child: RegisterButton())
          ],
        ),
      ),
    );
  }
}
