import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/registration/bloc/registration_bloc.dart';

import '../../../core/theme/i_theme/i_theme.dart';

class NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_nameInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Name', state.name.invalid),
              onChanged: (name) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationNameChanged(name)),
            ));
      },
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_phoneNumberInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Phone Number', state.phoneNumber.invalid),
              onChanged: (phoneNumber) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationPhoneNumberChanged(phoneNumber)),
            ));
      },
    );
  }
}

class Password1Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.password1 != current.password1,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_password1Input_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Password', state.password1.invalid),
              onChanged: (password1) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationPassword1Changed(password1)),
            ));
      },
    );
  }
}

class Password2Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.password2 != current.password2,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_password2Input_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Password', state.password2.invalid),
              onChanged: (password2) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationPassword2Changed(password2)),
            ));
      },
    );
  }
}

class CityInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.city != current.city,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_cityInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('City', state.city.invalid),
              onChanged: (city) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationCityChanged(city)),
            ));
      },
    );
  }
}

class StreetInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.street != current.street,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_streetInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Street', state.street.invalid),
              onChanged: (street) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationStreetChanged(street)),
            ));
      },
    );
  }
}

class HouseNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) =>
          previous.houseNumber != current.houseNumber,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_houseNumberInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('House Number', state.houseNumber.invalid),
              onChanged: (houseNumber) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationHouseNumberChanged(houseNumber)),
            ));
      },
    );
  }
}

class BuildingInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.building != current.building,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_buildingInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Building', state.building.invalid),
              onChanged: (building) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationBuildingChanged(building)),
            ));
      },
    );
  }
}

class FloorInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.floor != current.floor,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_floorInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Floor', state.floor.invalid),
              onChanged: (floor) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationFloorChanged(floor)),
            ));
      },
    );
  }
}

class FlatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.flat != current.flat,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_flatInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Flat', state.flat.invalid),
              onChanged: (flat) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationFlatChanged(flat)),
            ));
      },
    );
  }
}

class EntranceInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.entrance != current.entrance,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return SizedBox(
            height: theme.registrationCardTheme.inputHeight,
            child: TextField(
              key: const Key('registrationForm_entranceInput_textField'),
              decoration: theme.registrationCardTheme
                  .inputDecoration('Entrance', state.entrance.invalid),
              onChanged: (entrance) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationEntranceChanged(entrance)),
            ));
      },
    );
  }
}
