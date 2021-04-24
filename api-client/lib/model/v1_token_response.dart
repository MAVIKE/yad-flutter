part of swagger.api;

class V1TokenResponse {
  String token = null;

  V1TokenResponse();

  @override
  String toString() {
    return 'V1TokenResponse[token=$token, ]';
  }

  V1TokenResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {'token': token};
  }

  static List<V1TokenResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1TokenResponse>()
        : json.map((value) => new V1TokenResponse.fromJson(value)).toList();
  }

  static Map<String, V1TokenResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1TokenResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1TokenResponse.fromJson(value));
    }
    return map;
  }
}
