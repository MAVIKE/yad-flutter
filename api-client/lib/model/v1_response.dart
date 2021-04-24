part of swagger.api;

class V1Response {
  String message = null;

  V1Response();

  @override
  String toString() {
    return 'V1Response[message=$message, ]';
  }

  V1Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {'message': message};
  }

  static List<V1Response> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1Response>()
        : json.map((value) => new V1Response.fromJson(value)).toList();
  }

  static Map<String, V1Response> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1Response>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1Response.fromJson(value));
    }
    return map;
  }
}
