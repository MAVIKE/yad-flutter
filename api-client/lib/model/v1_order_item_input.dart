part of swagger.api;

class V1OrderItemInput {
  int count = null;

  int menuItemId = null;

  V1OrderItemInput();

  @override
  String toString() {
    return 'V1OrderItemInput[count=$count, menuItemId=$menuItemId, ]';
  }

  V1OrderItemInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    menuItemId = json['menu_item_id'];
  }

  Map<String, dynamic> toJson() {
    return {'count': count, 'menu_item_id': menuItemId};
  }

  static List<V1OrderItemInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1OrderItemInput>()
        : json.map((value) => new V1OrderItemInput.fromJson(value)).toList();
  }

  static Map<String, V1OrderItemInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1OrderItemInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1OrderItemInput.fromJson(value));
    }
    return map;
  }
}
