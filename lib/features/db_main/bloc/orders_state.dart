part of 'orders_bloc.dart';

enum OrdersStatus { initial, loaded, loadFailed }

class OrdersState extends Equatable {
  const OrdersState({
    this.status = OrdersStatus.initial,
    this.orders = const [],
  });

  final OrdersStatus status;
  final List<Order> orders;

  @override
  List<Object> get props => [status];

  OrdersState copyWith({
    OrdersStatus? status,
    List<Order>? orders,
  }) {
    return OrdersState(
      orders: orders ?? this.orders,
      status: status ?? this.status,
    );
  }
}
