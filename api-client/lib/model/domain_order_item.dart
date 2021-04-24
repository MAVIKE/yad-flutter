part of swagger.api;

class DomainOrderItem {
  int count = null;

  int id = null;

  int menuItemId = null;

  int orderId = null;

  DomainOrderItem();

  @override
  String toString() {
    return 'DomainOrderItem[count=$count, id=$id, menuItemId=$menuItemId, orderId=$orderId, ]';
  }

  DomainOrderItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    id = json['id'];
    menuItemId = json['menu_item_id'];
    orderId = json['order_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'id': id,
      'menu_item_id': menuItemId,
      'order_id': orderId
    };
  }

  static List<DomainOrderItem> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DomainOrderItem>()
        : json.map((value) => new DomainOrderItem.fromJson(value)).toList();
  }

  static Map<String, DomainOrderItem> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainOrderItem.fromJson(value));
    }
    return map;
  }
}
