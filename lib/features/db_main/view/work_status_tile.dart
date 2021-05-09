import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:yad/widgets/yad_expansion_tile.dart';
import 'package:yad/features/db_main/bloc/bloc.dart';

class WorkStatusTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ITheme>().dbMainTheme;
    return YadExpansionTile(
      decoration: theme.statusDecoration,
      titleBuilder: (ctx, isExpanded, _) =>
          Text("Status", style: theme.headerTextStyle),
      trailingBuilder: (ctx, isExpanded, _) {
        if (isExpanded) {
          return Icon(theme.expandedIcon, color: theme.iconColor);
        } else {
          return Icon(theme.collapsedIcon, color: theme.iconColor);
        }
      },
      body: BlocBuilder<WorkStatusBloc, WorkStatusState>(
        builder: (context, state) {
          return Container(
            padding: theme.cardPadding,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Working", style: theme.workStatusTextStyle),
                Radio(
                  value: WorkStatus.working,
                  groupValue: state.status,
                  onChanged: (value) {
                    context.read<WorkStatusBloc>().working();
                  },
                ),
                Text("Not working", style: theme.workStatusTextStyle),
                Radio(
                  value: WorkStatus.not_working,
                  groupValue: state.status,
                  onChanged: (value) {
                    context.read<WorkStatusBloc>().notWorking();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
