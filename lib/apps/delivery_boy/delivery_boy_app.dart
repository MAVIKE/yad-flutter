import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:yad/core/domain/repos/auth/delivery_boy_auth_repo.dart';
import 'package:yad/core/domain/repos/orders_repo/mock_orders_repo.dart';
import 'package:yad/core/domain/repos/orders_repo/orders_repo.dart';
import 'package:yad/core/domain/repos/work_status_repo/mock_work_status_repo.dart';
import 'package:yad/core/domain/repos/work_status_repo/work_status_repo.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:yad/features/login/login.dart';
import 'pages/pages.dart';

void runDeliveryBoyApp() async {
  final api = ApiClient();
  runApp(MultiRepositoryProvider(providers: [
    RepositoryProvider.value(
      value: api,
    ),
    RepositoryProvider<ITheme>.value(
      value: LightTheme(),
    ),
    RepositoryProvider<AuthRepo>.value(
      value: DeliveryBoyAuthenticationRepository(api),
    ),
    RepositoryProvider<WorkStatusRepo>.value(
      value: MockWorkStatusRepo(),
    ),
    RepositoryProvider<OrdersRepo>.value(
      value: MockOrdersRepo(),
    ),
  ], child: App()));
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        authRepo: RepositoryProvider.of(context),
      ),
      child: AppView(),
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
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) =>
              current.status == AuthStatus.authenticated ||
              current.status == AuthStatus.unauthenticated,
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
                  LoginPage.route(true),
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
