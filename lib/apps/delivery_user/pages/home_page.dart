import 'package:flutter/material.dart';
import 'package:yad/features/payment/payment.dart';
import 'package:yad/widgets/yad_scaffold.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return YadScaffold(
      body: PaymentPage(),
    );
  }
}
