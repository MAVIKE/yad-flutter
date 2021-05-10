import 'package:api_client/api_client.dart';

class Order {
  int id;
  String status;
  String from;
  String to;

  Order(
      {required this.id,
      required int statusId,
      required this.from,
      required this.to})
      : status = statusToString(statusId);

  static Order fromRawOrder(DomainOrder order) {
    return Order(
        id: order.id ?? 0,
        statusId: order.status ?? 0,
        from: "Unknown",
        to: "Unknown");
  }
}

String statusToString(int status) {
  switch (status) {
    case 0:
      return "Created";
    case 1:
      return "Paid";
    case 2:
      return "Preparing";
    case 3:
      return "Waiting for courier";
    case 4:
      return "EnRoute";
    case 5:
      return "Delivered";
    default:
      return "Unknown";
  }
}
