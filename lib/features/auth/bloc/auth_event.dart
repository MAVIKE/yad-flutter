part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthAuthenticated extends AuthEvent {
  final String token;
  AuthAuthenticated(this.token);

  @override
  List<Object> get props => [token];
}

class AuthUnauthenticated extends AuthEvent {}

class AuthUnknown extends AuthEvent {}

class AuthSignoutRequested extends AuthEvent {}
