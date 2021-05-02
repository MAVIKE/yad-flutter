part of 'auth_bloc.dart';

enum AuthStatus {
  unknown,
  authenticated,
  unauthenticated,
  loginInProgress,
  logoutInProgress
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

  const AuthState.loginInProgress()
      : this._(status: AuthStatus.loginInProgress);

  const AuthState.logoutInProgress()
      : this._(status: AuthStatus.logoutInProgress);

  final AuthStatus status;
  final String token;

  @override
  List<Object> get props => [status, token];
}
