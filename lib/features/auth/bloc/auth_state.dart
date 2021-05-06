part of 'auth_bloc.dart';

enum AuthStatus {
  unknown,
  authenticated,
  unauthenticated,
}

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthStatus.unknown,
    this.token = '',
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(String token)
      : this._(status: AuthStatus.authenticated, token: token);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  final AuthStatus status;
  final String token;

  @override
  List<Object> get props => [status, token];
}
