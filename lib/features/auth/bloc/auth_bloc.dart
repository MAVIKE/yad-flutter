import 'dart:async';

import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepo authRepo,
  })   : _authRepo = authRepo,
        super(const AuthState.unknown()) {
    (() async {
      final instance = await SharedPreferences.getInstance();
      final token = instance.getString("token");
      if (token != null) {
        provideToken(token);
      } else {
        unauthenticated();
      }
    })();
  }

  final AuthRepo _authRepo;

  void logout() {
    add(AuthLogoutRequested());
  }

  void login(String phoneNumber, String password) {
    add(AuthLoginRequested(phoneNumber, password));
  }

  void provideToken(String token) {
    add(AuthTokenProvided(token));
  }

  void unauthenticated() {
    add(AuthUnauthenticated());
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthLoginRequested) {
      yield AuthState.loginInProgress();
      yield await _mapAuthLoginRequested(event);
    } else if (event is AuthLogoutRequested) {
      yield AuthState.logoutInProgress();
      yield await _mapAuthLogoutRequested(event);
    } else if (event is AuthTokenProvided) {
      yield AuthState.authenticated(event.token);
    } else if (event is AuthUnauthenticated) {
      yield AuthState.unauthenticated();
    }
  }

  Future<AuthState> _mapAuthLoginRequested(AuthLoginRequested event) async {
    return await _authRepo
        .logIn(username: event.phoneNumber, password: event.password)
        .then((token) => AuthState.authenticated(token),
            onError: (_) => AuthState.unauthenticated());
  }

  Future<AuthState> _mapAuthLogoutRequested(AuthLogoutRequested event) async {
    return await _authRepo.logOut().then((_) {
      return AuthState.unauthenticated();
    }, onError: (_) {
      return AuthState.unknown();
    });
  }
}
