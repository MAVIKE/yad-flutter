part of 'registration_bloc.dart';

class RegistrationState extends Equatable {
  const RegistrationState({
    this.status = FormzStatus.pure,
    this.name = const Name.pure(),
    this.phoneNumber = const PhoneNumber.pure(),
    this.password1 = const Password1.pure(),
    this.password2 = const Password2.pure(),
    this.city = const City.pure(),
    this.street = const Street.pure(),
    this.houseNumber = const HouseNumber.pure(),
    this.building = const Building.pure(),
    this.floor = const Floor.pure(),
    this.flat = const Flat.pure(),
    this.entrance = const Entrance.pure(),
  });

  final FormzStatus status;
  final Name name;
  final PhoneNumber phoneNumber;
  final Password1 password1;
  final Password2 password2;
  final City city;
  final Street street;
  final HouseNumber houseNumber;
  final Building building;
  final Floor floor;
  final Flat flat;
  final Entrance entrance;

  RegistrationState copyWith({
    FormzStatus? status,
    Name? name,
    PhoneNumber? phoneNumber,
    Password1? password1,
    Password2? password2,
    City? city,
    Street? street,
    HouseNumber? houseNumber,
    Building? building,
    Floor? floor,
    Flat? flat,
    Entrance? entrance,
  }) {
    return RegistrationState(
      status: status ?? this.status,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password1: password1 ?? this.password1,
      password2: password2 ?? this.password2,
      city: city ?? this.city,
      street: street ?? this.street,
      houseNumber: houseNumber ?? this.houseNumber,
      building: building ?? this.building,
      floor: floor ?? this.floor,
      flat: flat ?? this.flat,
      entrance: entrance ?? this.entrance,
    );
  }

  @override
  List<Object> get props => [
        status,
        name,
        phoneNumber,
        password1,
        password2,
        city,
        street,
        houseNumber,
        building,
        floor,
        flat,
        entrance
      ];
}
