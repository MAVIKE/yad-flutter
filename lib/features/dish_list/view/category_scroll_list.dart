import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/widgets/widgets.dart';

class CategoryScrollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishListBloc, DishListState>(builder: (context, state) {
      switch (state.status) {
        case DishListStatus.failure:
          return const Center(child: Text('failed to fetch categories'));
        case DishListStatus.success:
          if (state.categories.isEmpty) {
            return const Center(child: Text('no categories'));
          }
          return Container(
              height: context.read<ITheme>().dishListTheme.dishCategoryHeight,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    DishCategory category = state.categories[index];
                    return DishCategoryWidget(
                        categoryTitle: category.categoryTitle,
                        categoryId: category.id);
                  },
                  itemCount: state.categories.length,
                  scrollDirection: Axis.horizontal));
        default:
          return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
