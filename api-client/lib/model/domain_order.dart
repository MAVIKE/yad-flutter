part of swagger.api;

class DomainOrder {
  int courierId = null;

  int deliveryPrice = null;

  int id = null;

  String paid = null;

  int restaurantId = null;

  int status = null;

  int totalPrice = null;

  int userId = null;

  DomainOrder();

  @override
  String toString() {
    return 'DomainOrder[courierId=$courierId, deliveryPrice=$deliveryPrice, id=$id, paid=$paid, restaurantId=$restaurantId, status=$status, totalPrice=$totalPrice, userId=$userId, ]';
  }

  DomainOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    courierId = json['courier_id'];
    deliveryPrice = json['delivery_price'];
    id = json['id'];
    paid = json['paid'];
    restaurantId = json['restaurant_id'];
    status = json['status'];
    totalPrice = json['total_price'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'courier_id': courierId,
      'delivery_price': deliveryPrice,
      'id': id,
      'paid': paid,
      'restaurant_id': restaurantId,
      'status': status,
      'total_price': totalPrice,
      'user_id': userId
    };
  }

  static List<DomainOrder> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DomainOrder>()
        : json.map((value) => new DomainOrder.fromJson(value)).toList();
  }

  static Map<String, DomainOrder> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainOrder.fromJson(value));
    }
    return map;
  }
}
