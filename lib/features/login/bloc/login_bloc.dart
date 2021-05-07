import 'dart:async';

import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:yad/features/auth/auth.dart';
import 'package:yad/features/login/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthBloc authBloc, required AuthRepo authRepo})
      : _authBloc = authBloc,
        _authRepo = authRepo,
        super(const LoginState());

  final AuthBloc _authBloc;
  final AuthRepo _authRepo;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginUsernameChanged) {
      yield _mapUsernameChangedToState(event, state);
    } else if (event is LoginPasswordChanged) {
      yield _mapPasswordChangedToState(event, state);
    } else if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event, state);
    }
  }

  LoginState _mapUsernameChangedToState(
    LoginUsernameChanged event,
    LoginState state,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.username);
    return state.copyWith(
      phoneNumber: phoneNumber,
    );
  }

  LoginState _mapPasswordChangedToState(
    LoginPasswordChanged event,
    LoginState state,
  ) {
    final password = Password.dirty(event.password);
    return state.copyWith(
      password: password,
    );
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      final result = await _authRepo.signIn(
        username: state.phoneNumber.value,
        password: state.password.value,
      );
      final token = result.value;
      if (token != null) {
        yield state.copyWith(status: FormzStatus.submissionSuccess);
        _authBloc.authenticated(token);
      } else {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
}
