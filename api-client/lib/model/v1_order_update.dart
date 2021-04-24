part of swagger.api;

class V1OrderUpdate {
  int status;

  V1OrderUpdate();

  @override
  String toString() {
    return 'V1OrderUpdate[status=$status, ]';
  }

  V1OrderUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {'status': status};
  }

  static List<V1OrderUpdate> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new V1OrderUpdate.fromJson(value)).toList();
  }

  static Map<String, V1OrderUpdate> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1OrderUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1OrderUpdate.fromJson(value));
    }
    return map;
  }
}
