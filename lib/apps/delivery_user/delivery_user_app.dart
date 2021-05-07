import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yad/core/domain/repos/load_dish_list/dish_list_repo.dart';
import 'package:yad/core/domain/repos/load_dish_list/mock_dish_list_repo.dart';
import 'package:yad/core/domain/repos/make_payment/make_payment_repo.dart';
import 'package:yad/core/domain/repos/make_payment/user_make_payment_repo.dart';
import '../../core/theme/i_theme/i_theme.dart';
import '../../core/theme/light_theme/light_theme.dart';
import 'pages/pages.dart';

void runDeliveryUserApp() async {
  runApp(App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ITheme>(
          create: (context) => LightTheme(),
        ),
        RepositoryProvider<MakePaymentRepo>(
          create: (context) => UserMakePaymentRepository(),
        ),
        RepositoryProvider<DishListRepo>(
          create: (context) => MockDishListRepository(),
        ),
        // еще тут будет лежать репозиторий Вовы auth
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  //final _navigatorKey = GlobalKey<NavigatorState>();

  //NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    (() async {})();
    return MaterialApp(
      //navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      // Вовин builder с проверкой BlocListener<AuthBloc, AuthState>
      // вместо старого home
      // заглушка, поскольку auth еще не добавлена
      home: HomePage(),
      //onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
