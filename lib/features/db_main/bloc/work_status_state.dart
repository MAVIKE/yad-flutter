part of 'work_status_bloc.dart';

enum WorkStatus { initial, working, not_working }

class WorkStatusState extends Equatable {
  const WorkStatusState({this.status = WorkStatus.initial});

  final WorkStatus status;

  @override
  List<Object> get props => [status];
}
