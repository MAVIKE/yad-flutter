import 'dart:async';

import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

// Следит за текущим состоянием авторизации.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepo authRepo,
  })   : _authRepo = authRepo,
        super(const AuthState.unknown()) {
    (() async {
      // Ищем токен в хранилище и ставим, если нашелся.
      final instance = await SharedPreferences.getInstance();
      final token = instance.getString("token");
      if (token != null) {
        _authRepo.setToken(token);
        authenticated(token);
      } else {
        unauthenticated();
      }
    })();
  }

  final AuthRepo _authRepo;

  void unauthenticated() {
    add(AuthUnauthenticated());
  }

  void authenticated(String token) {
    add(AuthAuthenticated(token));
  }

  void requestSignout() {
    add(AuthSignoutRequested());
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthSignoutRequested) {
      yield await _mapAuthSignoutRequested(event);
    } else if (event is AuthUnauthenticated) {
      yield AuthState.unauthenticated();
    } else if (event is AuthAuthenticated) {
      yield await _mapAuthAuthenticated(event);
    }
  }

  Future<AuthState> _mapAuthAuthenticated(AuthAuthenticated event) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("token", event.token);
    return AuthState.authenticated(event.token);
  }

  Future<AuthState> _mapAuthSignoutRequested(AuthSignoutRequested event) async {
    final instance = await SharedPreferences.getInstance();
    instance.remove("token");
    return await _authRepo.signOut().then((result) {
      return result.error == null
          ? AuthState.unauthenticated()
          : AuthState.unknown();
    }, onError: (_) {
      return AuthState.unknown();
    });
  }
}
