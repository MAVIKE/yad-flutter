import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/login/bloc/login_bloc.dart';
import 'package:yad/widgets/yad_input.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final loginTheme = theme.loginTheme;

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
      child: Container(
        padding: loginTheme.pagePadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: loginTheme.titleTextStyle,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                decoration: loginTheme.cardDecoration,
                padding: loginTheme.cardPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _UsernameInput(),
                    _PasswordInput(),
                    _LoginButton(),
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

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final loginTheme = theme.loginTheme;
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        return YadInput(
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          error: state.phoneNumber.errorString(),
          label: "Phone number",
          width: loginTheme.inputWidth,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final loginTheme = theme.loginTheme;
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return YadInput(
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          error: state.password.errorString(),
          label: "Password",
          obscureText: true,
          width: loginTheme.inputWidth,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final loginTheme = theme.loginTheme;
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: loginTheme.buttonDecoration,
          padding: loginTheme.buttonPadding,
          child: state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : TextButton(
                  child: Text(
                    'Sign in',
                    style: loginTheme.buttonTextStyle,
                  ),
                  onPressed: state.status.isValidated
                      ? () {
                          context.read<LoginBloc>().add(const LoginSubmitted());
                        }
                      : null,
                ),
        );
      },
    );
  }
}
