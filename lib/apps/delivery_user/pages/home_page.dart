import 'package:flutter/material.dart';
import 'package:yad/features/payment/payment.dart';


class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: PaymentPage(),
    );
  }
}