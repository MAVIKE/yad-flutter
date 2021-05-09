import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/features/db_main/bloc/orders_bloc.dart';
import 'package:yad/features/db_main/bloc/work_status_bloc.dart';
import 'orders_tile.dart';
import 'work_status_tile.dart';

class DbMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>().dbMainTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WorkStatusBloc(context.read(), context.read()),
        ),
        BlocProvider(
          create: (context) => OrdersBloc(context.read(), context.read()),
        )
      ],
      child: Container(
        padding: theme.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Work", style: theme.titleTextStyle),
            WorkStatusTile(),
            Divider(),
            OrdersTile(),
          ],
        ),
      ),
    );
  }
}
