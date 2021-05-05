import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/models/category.dart';
import 'package:yad/features/dish_list/widgets/widgets.dart';

class CategoryScrollList extends StatefulWidget {

  @override
  _CategoryScrollListState createState() => _CategoryScrollListState();
}

class _CategoryScrollListState extends State<CategoryScrollList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    //_scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishListBloc, DishListState>(
        builder: (context, state) {
          switch (state.status) {
            case DishListStatus.failure:
              return const Center(child: Text('failed to fetch categories'));
            case DishListStatus.success:
              if (state.dishes.isEmpty) {
                return const Center(child: Text('no dishes'));
              }
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  DishCategory category = state.categories[index];
                  return DishCategoryWidget(
                      categoryTitle: category.categoryTitle,
                      categoryId: category.id);
                },
                itemCount: state.categories.length,
                controller: _scrollController,
              );
            default:
              return const Center(child: CircularProgressIndicator());
          }
        });;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}