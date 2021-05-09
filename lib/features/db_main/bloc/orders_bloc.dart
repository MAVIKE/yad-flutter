import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yad/core/domain/models/order.dart';
import 'package:yad/core/domain/repos/failure.dart';
import 'package:yad/core/domain/repos/orders_repo/orders_repo.dart';
import 'package:yad/features/auth/bloc/auth_bloc.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersRepo _repo;
  final AuthBloc _authBloc;
  bool closed = false;
  OrdersBloc(this._repo, this._authBloc) : super(OrdersState()) {
    add(_OrdersInit());
  }

  @override
  Stream<OrdersState> mapEventToState(OrdersEvent event) async* {
    if (event is _OrdersInit) {
      yield* _mapOrdersInitToState(event);
    }
  }

  Stream<OrdersState> _mapOrdersInitToState(_OrdersInit event) async* {
    yield await _fetchOrders();
    while (!closed) {
      yield await Future.delayed(Duration(seconds: 5), () async {
        return await _fetchOrders();
      });
    }
  }

  Future<OrdersState> _fetchOrders() async {
    final result = await _repo.loadOrders();
    final orders = result.value;
    if (orders != null) {
      return state.copyWith(orders: orders, status: OrdersStatus.loaded);
    } else {
      if (result.error is AuthFailure) {
        _authBloc.unauthenticated();
      }
      return state.copyWith(status: OrdersStatus.loadFailed);
    }
  }

  @override
  Future<void> close() async {
    print("${this.runtimeType.toString()} closed");
    closed = true;
    await super.close();
  }
}
