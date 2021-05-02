part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogoutRequested extends AuthEvent {}

class AuthLoginRequested extends AuthEvent {
  const AuthLoginRequested(this.phoneNumber, this.password);

  final String phoneNumber;
  final String password;

  @override
  List<Object> get props => [phoneNumber, password];
}

class AuthTokenProvided extends AuthEvent {
  const AuthTokenProvided(this.token);

  final String token;

  @override
  List<Object> get props => [token];
}

class AuthUnauthenticated extends AuthEvent {}
