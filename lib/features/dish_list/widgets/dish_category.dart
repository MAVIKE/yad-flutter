import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';

import 'package:yad/core/theme/i_theme/i_theme.dart';

class DishCategoryWidget extends StatelessWidget {

  DishCategoryWidget({
  required String categoryTitle,
    required int categoryId
  }) : _categoryTitle = categoryTitle,
        _categoryId = categoryId;

  final String _categoryTitle;
  final int _categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishListBloc, DishListState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final theme = context.read<ITheme>();
        return Container(
            width: theme.dishListTheme.dishCategoryWidth,
            height: theme.dishListTheme.dishCategoryHeight,
            decoration: theme.dishListTheme.dishCategoryDecoration,
            margin: theme.dishListTheme.dishCategoryMargin,
            child: TextButton(
              key: const Key('dishCategory_raisedButton'),
              child: Text(
                _categoryTitle,
                style: theme.dishListTheme.textStyleCategoryName,
              ),
              onPressed: () {
                context.read<DishListBloc>().add(
                    DishListRequestedByCategoryId(_categoryId)
                );
              },
            )
        );
      },
    );
  }
}