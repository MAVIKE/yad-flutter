import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:yad/core/domain/repos/auth/delivery_boy_auth_repo.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:yad/features/login/login.dart';
import 'pages/pages.dart';

void runDeliveryBoyApp() async {
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepo>(
          create: (context) => DeliveryBoyAuthenticationRepository(),
        )
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepo: RepositoryProvider.of(context),
        ),
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    (() async {})();
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) async {
            switch (state.status) {
              case AuthStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  HomePage.route(),
                  (route) => false,
                );
                break;
              case AuthStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
