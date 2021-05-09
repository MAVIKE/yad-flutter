part of 'work_status_bloc.dart';

abstract class WorkStatusEvent extends Equatable {
  const WorkStatusEvent();

  @override
  List<Object> get props => [];
}

class WorkStatusChanged extends WorkStatusEvent {
  final WorkStatus status;

  WorkStatusChanged(this.status);

  @override
  List<Object> get props => [status];
}

class _WorkStatusInit extends WorkStatusEvent {}
