import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/auth/auth.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final token = context.select(
                  (AuthBloc bloc) => bloc.state.token,
                );
                return Text('Token: $token');
              },
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                context.read<AuthBloc>().requestSignout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
