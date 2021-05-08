import 'package:flutter_bloc/flutter_bloc.dart';
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
