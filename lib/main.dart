import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';

void main() {
  runApp(RepositoryProvider<ITheme>(
    create: (context) => LightTheme(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text("YAD Delivery boy app"),
        ),
        body: Center(
          child: Text("Template"),
        ),
      ),
    );
  }
}
