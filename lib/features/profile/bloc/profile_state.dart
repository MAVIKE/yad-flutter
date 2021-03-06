part of 'profile_bloc.dart';

enum ProfileStatus { initial, success, failure }

class ProfileState extends Equatable {
  const ProfileState({
    this.status = ProfileStatus.initial,
  });

  final ProfileStatus status;

  ProfileState copyWith({
    ProfileStatus? status,
  }) {
    return ProfileState(
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return '''ProfileState { 
    status: $status }''';
  }

  @override
  List<Object> get props => [status];
}
