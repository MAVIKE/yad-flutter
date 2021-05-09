import 'package:flutter/material.dart';
import 'package:yad/widgets/yad_scaffold.dart';
import 'package:yad/features/db_main/db_main.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return YadScaffold(
      isCourier: true,
      body: DbMainPage(),
    );
  }
}
