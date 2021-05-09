import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:yad/core/domain/repos/auth/user_auth_repo.dart';
import 'package:yad/core/domain/repos/cart/cart_repo.dart';
import 'package:yad/core/domain/repos/cart/remote_cart_repo.dart';
import 'package:yad/core/domain/repos/load_dish_list/remote_dish_list_repo.dart';
import 'package:yad/core/domain/repos/load_restaurant_list/remote_restaurant_list_repo.dart';
import 'package:yad/core/domain/repos/load_restaurant_list/restaurant_list_repo.dart';
import 'package:yad/core/domain/repos/register/register_repo.dart';
import 'package:yad/core/domain/repos/register/user_register_repo.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/core/theme/light_theme/light_theme.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:yad/core/domain/repos/load_dish_list/dish_list_repo.dart';
import 'package:yad/core/domain/repos/make_payment/make_payment_repo.dart';
import 'package:yad/core/domain/repos/make_payment/user_make_payment_repo.dart';
import 'pages/pages.dart';

void runDeliveryUserApp() async {
  final api = ApiClient(basePathOverride: r'http://161.35.217.187:9001/api/v1');
  runApp(MultiRepositoryProvider(providers: [
    RepositoryProvider.value(
      value: api,
    ),
    RepositoryProvider<ITheme>.value(
      value: LightTheme(),
    ),
    RepositoryProvider<AuthRepo>.value(
      value: UserAuthenticationRepository(api),
    ),
    RepositoryProvider<RegisterRepo>.value(
      value: UserRegisterRepo(api),
    ),
    RepositoryProvider<MakePaymentRepo>(
      create: (context) => UserMakePaymentRepository(),
    ),
    RepositoryProvider<RestaurantListRepo>(
      create: (context) => RemoteRestaurantListRepository(api),
    ),
    RepositoryProvider<DishListRepo>(
      create: (context) => RemoteDishListRepository(api),
    ),
    RepositoryProvider<CartRepo>(create: (context) => RemoteCartRepo())
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
                  LoginRegisterRoute.route(),
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
