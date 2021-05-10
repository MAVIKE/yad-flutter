import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/profile/bloc/profile_bloc.dart';
import 'package:yad/features/profile/view/address_info.dart';
import 'package:yad/features/profile/view/orders_info.dart';
import 'package:yad/features/profile/view/password_info.dart';
import 'package:yad/features/profile/view/user_info.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>();
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: Container(
        margin: theme.profileTheme.marginFormsList,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20),
              child: Text("Profile", style: theme.profileTheme.styleTitle),
            ),
            Expanded(
              child: ListView(
                children: [
                  UserInfo(),
                  AddressInfo(),
                  OrdersInfo(),
                  PasswordInfo()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
