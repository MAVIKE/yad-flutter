part of swagger.api;

class V1IdResponse {
  int id = null;

  V1IdResponse();

  @override
  String toString() {
    return 'V1IdResponse[id=$id, ]';
  }

  V1IdResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id};
  }

  static List<V1IdResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1IdResponse>()
        : json.map((value) => new V1IdResponse.fromJson(value)).toList();
  }

  static Map<String, V1IdResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1IdResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1IdResponse.fromJson(value));
    }
    return map;
  }
}
