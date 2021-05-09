import 'dart:async';

import 'package:yad/core/domain/repos/register/register_repo.dart';
import 'package:yad/features/registration/registration.dart';
import 'package:yad/features/registration/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:yad/features/registration/models/password.dart';
import 'package:yad/core/domain/repos/auth/auth_repo.dart';
import 'package:yad/features/auth/auth.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc({
    required RegisterRepo registerRepo,
    required AuthBloc authBloc,
    required AuthRepo authRepo,
  })   : _authBloc = authBloc,
        _registerRepo = registerRepo,
        super(const RegistrationState());

  final AuthBloc _authBloc;
  final RegisterRepo _registerRepo;

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
    } else if (event is RegistrationEmailChanged) {
      yield _mapEmailChangedToState(event, state);
    } else if (event is RegistrationSubmitted) {
      yield* _mapRegistrationSubmittedToState(event, state);
    }
  }

  RegistrationState _mapNameChangedToState(
    RegistrationNameChanged event,
    RegistrationState state,
  ) {
    final name = Name.dirty(event.name);
    return state.copyWith(name: name);
  }

  RegistrationState _mapPhoneNumberChangedToState(
    RegistrationPhoneNumberChanged event,
    RegistrationState state,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    return state.copyWith(phoneNumber: phoneNumber);
  }

  RegistrationState _mapPassword1ChangedToState(
    RegistrationPassword1Changed event,
    RegistrationState state,
  ) {
    final password1 = Password.dirty(event.password1);
    return state.copyWith(password1: password1);
  }

  RegistrationState _mapPassword2ChangedToState(
    RegistrationPassword2Changed event,
    RegistrationState state,
  ) {
    final password2 = Password.dirty(event.password2);
    return state.copyWith(password2: password2);
  }

  RegistrationState _mapCityChangedToState(
    RegistrationCityChanged event,
    RegistrationState state,
  ) {
    final city = City.dirty(event.city);
    return state.copyWith(city: city);
  }

  RegistrationState _mapStreetChangedToState(
    RegistrationStreetChanged event,
    RegistrationState state,
  ) {
    final street = Street.dirty(event.street);
    return state.copyWith(street: street);
  }

  RegistrationState _mapHouseNumberChangedToState(
    RegistrationHouseNumberChanged event,
    RegistrationState state,
  ) {
    final houseNumber = HouseNumber.dirty(event.houseNumber);
    return state.copyWith(houseNumber: houseNumber);
  }

  RegistrationState _mapBuildingChangedToState(
    RegistrationBuildingChanged event,
    RegistrationState state,
  ) {
    final building = Building.dirty(event.building);
    return state.copyWith(building: building);
  }

  RegistrationState _mapFloorChangedToState(
    RegistrationFloorChanged event,
    RegistrationState state,
  ) {
    final floor = Floor.dirty(event.floor);
    return state.copyWith(floor: floor);
  }

  RegistrationState _mapFlatChangedToState(
    RegistrationFlatChanged event,
    RegistrationState state,
  ) {
    final flat = Flat.dirty(event.flat);
    return state.copyWith(flat: flat);
  }

  RegistrationState _mapEntranceChangedToState(
    RegistrationEntranceChanged event,
    RegistrationState state,
  ) {
    final entrance = Entrance.dirty(event.entrance);
    return state.copyWith(entrance: entrance);
  }

  RegistrationState _mapEmailChangedToState(
    RegistrationEmailChanged event,
    RegistrationState state,
  ) {
    final email = Email.dirty(event.email);
    return state.copyWith(email: email);
  }

  Stream<RegistrationState> _mapRegistrationSubmittedToState(
    RegistrationSubmitted event,
    RegistrationState state,
  ) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      yield await _registerRepo
          .register(
        name: state.name.value,
        phoneNumber: state.phoneNumber.value,
        password: state.password1.value,
        email: state.email.value,
      )
          .then(
        (result) {
          if (result.error == null) {
            _authBloc.requestSignin(
                state.phoneNumber.value, state.password1.value);
            return state.copyWith(status: FormzStatus.submissionSuccess);
          } else {
            print(result.error);
            return state.copyWith(status: FormzStatus.submissionFailure);
          }
        },
        onError: (_) => state.copyWith(status: FormzStatus.submissionFailure),
      );
    }
  }
}
