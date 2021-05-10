import 'package:api_client/api_client.dart';

class Order {
  int id;
  String status;
  String from;
  String to;

  Order(
      {required this.id,
      required this.status,
      required this.from,
      required this.to});

  static Order fromRawOrder(DomainOrder order) {
    return Order(
        id: order.id ?? 0,
        status: order.status.toString(),
        from: "Unknown",
        to: "Unknown");
  }
}
