import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/registration/bloc/registration_bloc.dart';
import 'package:yad/widgets/yad_input.dart';

import '../../../core/theme/i_theme/i_theme.dart';

class NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          onChanged: (name) => context
              .read<RegistrationBloc>()
              .add(RegistrationNameChanged(name)),
          error: state.name.errorString,
          label: 'Name',
        );
      },
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          onChanged: (phoneNumber) => context
              .read<RegistrationBloc>()
              .add(RegistrationPhoneNumberChanged(phoneNumber)),
          error: state.phoneNumber.errorString,
          label: 'Phone Number',
        );
      },
    );
  }
}

class Password1Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.password1 != current.password1,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          onChanged: (password1) => context
              .read<RegistrationBloc>()
              .add(RegistrationPassword1Changed(password1)),
          error: state.password1.errorString,
          label: 'Password',
        );
      },
    );
  }
}

class Password2Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.password2 != current.password2,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          onChanged: (password2) => context
              .read<RegistrationBloc>()
              .add(RegistrationPassword2Changed(password2)),
          error: state.password2.errorString,
          label: 'Password',
        );
      },
    );
  }
}

class CityInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.city != current.city,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          onChanged: (city) => context
              .read<RegistrationBloc>()
              .add(RegistrationCityChanged(city)),
          error: state.city.errorString,
          label: 'City',
        );
      },
    );
  }
}

class StreetInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.street != current.street,
      builder: (context, state) {
        return YadInput(
          labelTextStyle: cardTheme.textStyleHouseNumber,
          width: cardTheme.streetInputWidth,
          onChanged: (street) => context
              .read<RegistrationBloc>()
              .add(RegistrationStreetChanged(street)),
          error: state.street.errorString,
          label: 'Street',
        );
      },
    );
  }
}

class HouseNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) =>
          previous.houseNumber != current.houseNumber,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.houseNumberInputWidth,
          labelTextStyle: cardTheme.textStyleHouseNumber,
          onChanged: (houseNumber) => context
              .read<RegistrationBloc>()
              .add(RegistrationHouseNumberChanged(houseNumber)),
          error: state.houseNumber.errorString,
          label: 'House Number',
        );
      },
    );
  }
}

class BuildingInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.building != current.building,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.smallInputWidth,
          labelTextStyle: cardTheme.textStyleHouseNumber,
          onChanged: (building) => context
              .read<RegistrationBloc>()
              .add(RegistrationBuildingChanged(building)),
          error: state.building.errorString,
          label: 'Buiding',
        );
      },
    );
  }
}

class FloorInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.floor != current.floor,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.smallInputWidth,
          labelTextStyle: cardTheme.textStyleHouseNumber,
          onChanged: (floor) => context
              .read<RegistrationBloc>()
              .add(RegistrationFloorChanged(floor)),
          error: state.floor.errorString,
          label: 'Floor',
        );
      },
    );
  }
}

class FlatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.flat != current.flat,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.smallInputWidth,
          labelTextStyle: cardTheme.textStyleHouseNumber,
          onChanged: (flat) => context
              .read<RegistrationBloc>()
              .add(RegistrationFlatChanged(flat)),
          error: state.flat.errorString,
          label: 'Flat',
        );
      },
    );
  }
}

class EntranceInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.entrance != current.entrance,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.smallInputWidth,
          labelTextStyle: cardTheme.textStyleHouseNumber,
          onChanged: (entrance) => context
              .read<RegistrationBloc>()
              .add(RegistrationEntranceChanged(entrance)),
          error: state.entrance.errorString,
          label: 'Entrance',
        );
      },
    );
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    final cardTheme = theme.registrationCardTheme;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return YadInput(
          width: cardTheme.inputWidth,
          labelTextStyle: cardTheme.textStyleHeaderInput,
          onChanged: (email) => context
              .read<RegistrationBloc>()
              .add(RegistrationEmailChanged(email)),
          error: state.email.errorString,
          label: 'Email',
        );
      },
    );
  }
}
