import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class YadScaffold extends StatelessWidget {
  final Widget _body;

  YadScaffold({
    Key? key,
    required Widget body,
  })   : _body = body,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: theme.appBarTheme.backgroundColor,
          foregroundColor: theme.appBarTheme.foregroundColor,
          titleTextStyle: theme.appBarTheme.titleTextStyle,
          toolbarHeight: 100,
          title: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "2jsakjda",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yet another delivery',
                    style: theme.appBarTheme.titleTextStyle,
                  ),
                ),
              ],
            ),
          )),
      body: _body,
    );
  }
}
