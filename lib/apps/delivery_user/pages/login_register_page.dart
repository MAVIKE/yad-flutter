import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:yad/features/login/login.dart';
import 'package:yad/features/registration/registration.dart';
import 'package:yad/widgets/yad_scaffold.dart';

class LoginRegisterRoute extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginRegisterRoute());
  }

  @override
  Widget build(BuildContext context) {
    return YadScaffold(
      isCourier: false,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.failure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text('Auth failure: ${state.failure}')),
              );
          }
        },
        child: PageView(
          children: [LoginPage(), RegistrationPage()],
        ),
      ),
    );
  }
}
