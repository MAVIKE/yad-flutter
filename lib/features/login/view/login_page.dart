import 'package:yad/features/login/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:yad/widgets/yad_scaffold.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  static Route route(bool isCourier) {
    return MaterialPageRoute<void>(
        builder: (_) => YadScaffold(
              isCourier: isCourier,
              body: LoginPage(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: BlocProvider(
        create: (context) {
          return LoginBloc(
            authRepo: context.read(),
            authBloc: context.read(),
          );
        },
        child: LoginForm(),
      ),
    );
  }
}
