import 'package:yad/features/login/bloc/login_bloc.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return YadScaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authBloc: BlocProvider.of<AuthBloc>(context),
            );
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}

class YadScaffold extends StatelessWidget {
  final Widget _body;

  YadScaffold({
    Key? key,
    required Widget body,
  })   : _body = body,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: _body,
    );
  }
}
