import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:yad/features/auth/auth.dart';

class YadScaffold extends StatelessWidget {
  final Widget _body;
  final bool _isCourier;

  YadScaffold({Key? key, required Widget body, bool? isCourier})
      : _body = body,
        _isCourier = isCourier ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final appBarTheme = theme.appBarTheme;
    final bloc = context.read<AuthBloc>();
    return Scaffold(
      appBar: AppBar(
          actions: bloc.state.status == AuthStatus.authenticated
              ? [
                  IconButton(
                      iconSize: 36,
                      color: appBarTheme.foreground,
                      onPressed: () {
                        bloc.requestSignout();
                      },
                      icon: Icon(Icons.logout))
                ]
              : [],
          backgroundColor: appBarTheme.background,
          foregroundColor: appBarTheme.foreground,
          titleTextStyle: appBarTheme.titleTextStyle,
          toolbarHeight: appBarTheme.height,
          title: Container(
            child: Column(
              children: [
                _isCourier
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Courier",
                          style: appBarTheme.subtitleTextStyle,
                        ),
                      )
                    : Container(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yet another delivery',
                    style: appBarTheme.titleTextStyle,
                  ),
                ),
              ],
            ),
          )),
      body: _body,
    );
  }
}
