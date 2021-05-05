import 'package:flutter/material.dart';
import 'package:yad/core/theme/i_theme/i_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yad/features/dish_list/bloc/dish_list_bloc.dart';
import 'package:yad/features/dish_list/models/models.dart';
import 'package:yad/features/dish_list/widgets/widgets.dart';
import 'package:yad/widgets/dish_card.dart';

class DishScrollList extends StatefulWidget {

  DishScrollList(this.categoryId);

  final int categoryId;

  @override
  _DishScrollListState createState() => _DishScrollListState(categoryId);
}

class _DishScrollListState extends State<DishScrollList> {
  final _scrollController = ScrollController();
  final int categoryId;

  _DishScrollListState(this.categoryId);

  late DishListBloc _dishListBloc;

  @override
  void initState() {
    super.initState();
    //_scrollController.addListener(_onScroll);
    _dishListBloc = context.read<DishListBloc>()
      ..add(DishListFetched(this.categoryId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishListBloc, DishListState>(
        builder: (context, state) {
          switch (state.status) {
            case DishListStatus.failure:
              return const Center(child: Text('failed to fetch dishes'));
            case DishListStatus.success:
              if (state.dishes.isEmpty) {
                return const Center(child: Text('no dishes'));
              }
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  Dish dish = state.dishes[index];
                  return DishCard(header: dish.title,
                      description: dish.description,
                      isCountingDishes: false,
                      dishCost: dish.price);
                },
                itemCount: state.dishes.length,
                controller: _scrollController,
              );
            default:
              return const Center(child: CircularProgressIndicator());
          }
        });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  /*void _onScroll() {
    if (_isBottom) _dishListBloc.add(PostFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }*/

}