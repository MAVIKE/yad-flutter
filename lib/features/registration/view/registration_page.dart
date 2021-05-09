import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/registration/bloc/registration_bloc.dart';
import 'registration_form.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegistrationBloc(
              authBloc: context.read(),
              authRepo: context.read(),
              registerRepo: context.read(),
            ),
        child: RegistrationForm());
  }
}
