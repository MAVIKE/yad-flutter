import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/features/payment/payment.dart';

import 'apps/delivery_user/delivery_user_app.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runDeliveryUserApp();
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
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
          child: PaymentPage(),
        ),
      ),
    );
  }
}
