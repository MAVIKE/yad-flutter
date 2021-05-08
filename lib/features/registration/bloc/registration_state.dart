part of 'registration_bloc.dart';

class RegistrationState extends Equatable {
  const RegistrationState({
    this.status = FormzStatus.pure,
    this.name = const Name.pure(),
    this.phoneNumber = const PhoneNumber.pure(),
    this.password1 = const Password.pure(),
    this.password2 = const Password.pure(),
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
  final Password password1;
  final Password password2;
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
    Password? password1,
    Password? password2,
    City? city,
    Street? street,
    HouseNumber? houseNumber,
    Building? building,
    Floor? floor,
    Flat? flat,
    Entrance? entrance,
  }) {
    final newName = name ?? this.name;
    final newPhoneNumber = phoneNumber ?? this.phoneNumber;
    final newPassword1 = password1 ?? this.password1;
    final newPassword2 = password2 ?? this.password2;
    final newCity = city ?? this.city;
    final newStreet = street ?? this.street;
    final newHouseNumber = houseNumber ?? this.houseNumber;
    final newBuilding = building ?? this.building;
    final newFloor = floor ?? this.floor;
    final newFlat = flat ?? this.flat;
    final newEntrance = entrance ?? this.entrance;

    return RegistrationState(
      status: status ??
          Formz.validate([
            newName,
            newPhoneNumber,
            newPassword1,
            newPassword2,
            newCity,
            newStreet,
            newHouseNumber,
            newBuilding,
            newFloor,
            newFlat,
            newEntrance
          ]),
      name: newName,
      phoneNumber: newPhoneNumber,
      password1: newPassword1,
      password2: newPassword2,
      city: newCity,
      street: newStreet,
      houseNumber: newHouseNumber,
      building: newBuilding,
      floor: newFloor,
      flat: newFlat,
      entrance: newEntrance,
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
