import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:yad/core/domain/repos/work_status_repo/work_status_repo.dart';
import 'package:yad/features/auth/bloc/auth_bloc.dart';

part 'work_status_event.dart';
part 'work_status_state.dart';

class WorkStatusBloc extends Bloc<WorkStatusEvent, WorkStatusState> {
  final WorkStatusRepo _repo;
  final AuthBloc _authBloc;
  WorkStatusBloc(this._repo, this._authBloc) : super(WorkStatusState()) {
    add(_WorkStatusInit());
  }

  void working() {
    add(WorkStatusChanged(WorkStatus.working));
  }

  void notWorking() {
    add(WorkStatusChanged(WorkStatus.not_working));
  }

  @override
  Stream<WorkStatusState> mapEventToState(WorkStatusEvent event) async* {
    if (event is WorkStatusChanged) {
      yield* _mapWorkStatusChangedToState(event);
    } else if (event is _WorkStatusInit) {
      yield WorkStatusState(status: WorkStatus.working);
    }
  }

  Stream<WorkStatusState> _mapWorkStatusChangedToState(
      WorkStatusChanged event) async* {
    final result = await _repo.update(workStatus: event.status.index);
    if (result.error is AuthFailure) {
      _authBloc.unauthenticated();
    }
    if (result.error == null) {
      yield WorkStatusState(status: event.status);
    }
  }
}
