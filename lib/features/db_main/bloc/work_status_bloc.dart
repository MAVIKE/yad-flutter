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
      yield* _mapWorkStatusInitToState();
    }
  }

  Stream<WorkStatusState> _mapWorkStatusInitToState() async* {
    final result = await _repo.current();
    if (result.error is AuthFailure) {
      _authBloc.unauthenticated();
    }
    final status = result.value;
    if (status == null) {
      print("Work status init error: $result");
    } else {
      switch (status) {
        case 0:
          yield WorkStatusState(status: WorkStatus.not_working);
          break;
        default:
          yield WorkStatusState(status: WorkStatus.working);
      }
    }
  }

  Stream<WorkStatusState> _mapWorkStatusChangedToState(
      WorkStatusChanged event) async* {
    final result = await _repo.update(workStatus: statusToId(event.status));
    if (result.error is AuthFailure) {
      _authBloc.unauthenticated();
    }
    if (result.error == null) {
      yield WorkStatusState(status: event.status);
    } else {
      print("Work status change error: $result");
    }
  }
}

int statusToId(WorkStatus status) {
  switch (status) {
    case WorkStatus.initial:
      return 0;
    case WorkStatus.working:
      return 1;
    case WorkStatus.not_working:
      return 0;
    default:
      return 0;
  }
}
