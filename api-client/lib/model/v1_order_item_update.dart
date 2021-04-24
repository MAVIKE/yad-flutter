part of swagger.api;

class V1OrderItemUpdate {
  
  int count = null;
  
  V1OrderItemUpdate();

  @override
  String toString() {
    return 'V1OrderItemUpdate[count=$count, ]';
  }

  V1OrderItemUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count =
        json['count']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<V1OrderItemUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<V1OrderItemUpdate>() : json.map((value) => new V1OrderItemUpdate.fromJson(value)).toList();
  }

  static Map<String, V1OrderItemUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1OrderItemUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new V1OrderItemUpdate.fromJson(value));
    }
    return map;
  }
}

