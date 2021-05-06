import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/features/login/bloc/login_bloc.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:yad/widgets/yad_scaffold.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  static Route route(bool isCourier) {
    return MaterialPageRoute<void>(
        builder: (_) => LoginPage(
              isCourier: isCourier,
            ));
  }

  final bool _isCourier;

  LoginPage({bool? isCourier}) : _isCourier = isCourier ?? false;

  @override
  Widget build(BuildContext context) {
    return YadScaffold(
      isCourier: _isCourier,
      body: Padding(
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
      ),
    );
  }
}
