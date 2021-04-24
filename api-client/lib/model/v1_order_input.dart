part of swagger.api;

class V1OrderInput {
  int restaurantId;

  V1OrderInput();

  @override
  String toString() {
    return 'V1OrderInput[restaurantId=$restaurantId, ]';
  }

  V1OrderInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    restaurantId = json['restaurant_id'];
  }

  Map<String, dynamic> toJson() {
    return {'restaurant_id': restaurantId};
  }

  static List<V1OrderInput> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new V1OrderInput.fromJson(value)).toList();
  }

  static Map<String, V1OrderInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1OrderInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1OrderInput.fromJson(value));
    }
    return map;
  }
}
