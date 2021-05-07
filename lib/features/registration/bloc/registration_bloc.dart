import 'dart:async';

//import 'package:yad/features/register/register.dart';
import 'package:yad/features/registration/registration.dart';
import 'package:yad/features/registration/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/registration/models/password1.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(RegistrationState initialState) : super(initialState);

  /*RegistrationBloc({required RegisterBloc registerBloc})
      : _registerBloc = registerBloc,
        super(const RegistrationState());

  final RegisterBloc _registerBloc;*/

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    if (event is RegistrationNameChanged) {
      yield _mapNameChangedToState(event, state);
    } else if (event is RegistrationPhoneNumberChanged) {
      yield _mapPhoneNumberChangedToState(event, state);
    } else if (event is RegistrationPassword1Changed) {
      yield _mapPassword1ChangedToState(event, state);
    } else if (event is RegistrationPassword2Changed) {
      yield _mapPassword2ChangedToState(event, state);
    } else if (event is RegistrationCityChanged) {
      yield _mapCityChangedToState(event, state);
    } else if (event is RegistrationStreetChanged) {
      yield _mapStreetChangedToState(event, state);
    } else if (event is RegistrationHouseNumberChanged) {
      yield _mapHouseNumberChangedToState(event, state);
    } else if (event is RegistrationBuildingChanged) {
      yield _mapBuildingChangedToState(event, state);
    } else if (event is RegistrationFloorChanged) {
      yield _mapFloorChangedToState(event, state);
    } else if (event is RegistrationFlatChanged) {
      yield _mapFlatChangedToState(event, state);
    } else if (event is RegistrationEntranceChanged) {
      yield _mapEntranceChangedToState(event, state);
    } else if (event is RegistrationSubmitted) {
      yield* _mapRegistrationSubmittedToState(event, state);
    }
  }

  RegistrationState _mapNameChangedToState(
    RegistrationNameChanged event,
    RegistrationState state,
  ) {
    final name = Name.dirty(event.name);
    return state.copyWith(
      name: name,
      status: Formz.validate([
        name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapPhoneNumberChangedToState(
    RegistrationPhoneNumberChanged event,
    RegistrationState state,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    return state.copyWith(
      phoneNumber: phoneNumber,
      status: Formz.validate([
        state.name,
        phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapPassword1ChangedToState(
    RegistrationPassword1Changed event,
    RegistrationState state,
  ) {
    final password1 = Password1.dirty(event.password1);
    return state.copyWith(
      password1: password1,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapPassword2ChangedToState(
    RegistrationPassword2Changed event,
    RegistrationState state,
  ) {
    final password2 = Password2.dirty(event.password2);
    return state.copyWith(
      password2: password2,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapCityChangedToState(
    RegistrationCityChanged event,
    RegistrationState state,
  ) {
    final city = City.dirty(event.city);
    return state.copyWith(
      city: city,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapStreetChangedToState(
    RegistrationStreetChanged event,
    RegistrationState state,
  ) {
    final street = Street.dirty(event.street);
    return state.copyWith(
      street: street,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapHouseNumberChangedToState(
    RegistrationHouseNumberChanged event,
    RegistrationState state,
  ) {
    final houseNumber = HouseNumber.dirty(event.houseNumber);
    return state.copyWith(
      houseNumber: houseNumber,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        houseNumber,
        state.building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapBuildingChangedToState(
    RegistrationBuildingChanged event,
    RegistrationState state,
  ) {
    final building = Building.dirty(event.building);
    return state.copyWith(
      building: building,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        building,
        state.floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapFloorChangedToState(
    RegistrationFloorChanged event,
    RegistrationState state,
  ) {
    final floor = Floor.dirty(event.floor);
    return state.copyWith(
      floor: floor,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        floor,
        state.flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapFlatChangedToState(
    RegistrationFlatChanged event,
    RegistrationState state,
  ) {
    final flat = Flat.dirty(event.flat);
    return state.copyWith(
      flat: flat,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        flat,
        state.entrance
      ]),
    );
  }

  RegistrationState _mapEntranceChangedToState(
    RegistrationEntranceChanged event,
    RegistrationState state,
  ) {
    final entrance = Entrance.dirty(event.entrance);
    return state.copyWith(
      entrance: entrance,
      status: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password1,
        state.password2,
        state.city,
        state.street,
        state.houseNumber,
        state.building,
        state.floor,
        state.flat,
        entrance
      ]),
    );
  }

  Stream<RegistrationState> _mapRegistrationSubmittedToState(
    RegistrationSubmitted event,
    RegistrationState state,
  ) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      /*
      try {
        _registerBloc.//register(
          state.name.value,
          state.phoneNumber,
          state.password1,
          state.password2,
          state.city,
          state.street,
          state.houseNumber,
          state.building,
          state.floor,
          state.flat,
          state.entrance,
        );
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } on Exception catch (_) {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
      */
    }
  }
}
