part of 'package:yad/features/registration/bloc/registration_bloc.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegistrationNameChanged extends RegistrationEvent {
  const RegistrationNameChanged(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}

class RegistrationPhoneNumberChanged extends RegistrationEvent {
  const RegistrationPhoneNumberChanged(this.phoneNumber);

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class RegistrationPassword1Changed extends RegistrationEvent {
  const RegistrationPassword1Changed(this.password1);

  final String password1;

  @override
  List<Object> get props => [password1];
}

class RegistrationPassword2Changed extends RegistrationEvent {
  const RegistrationPassword2Changed(this.password2);

  final String password2;

  @override
  List<Object> get props => [password2];
}

class RegistrationCityChanged extends RegistrationEvent {
  const RegistrationCityChanged(this.city);

  final String city;

  @override
  List<Object> get props => [city];
}

class RegistrationStreetChanged extends RegistrationEvent {
  const RegistrationStreetChanged(this.street);

  final String street;

  @override
  List<Object> get props => [street];
}

class RegistrationHouseNumberChanged extends RegistrationEvent {
  const RegistrationHouseNumberChanged(this.houseNumber);

  final String houseNumber;

  @override
  List<Object> get props => [houseNumber];
}

class RegistrationBuildingChanged extends RegistrationEvent {
  const RegistrationBuildingChanged(this.building);

  final String building;

  @override
  List<Object> get props => [building];
}

class RegistrationFloorChanged extends RegistrationEvent {
  const RegistrationFloorChanged(this.floor);

  final String floor;

  @override
  List<Object> get props => [floor];
}

class RegistrationFlatChanged extends RegistrationEvent {
  const RegistrationFlatChanged(this.flat);

  final String flat;

  @override
  List<Object> get props => [flat];
}

class RegistrationEntranceChanged extends RegistrationEvent {
  const RegistrationEntranceChanged(this.entrance);

  final String entrance;

  @override
  List<Object> get props => [entrance];
}

class RegistrationSubmitted extends RegistrationEvent {
  const RegistrationSubmitted();
}
