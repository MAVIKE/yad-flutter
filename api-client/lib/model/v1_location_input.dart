part of swagger.api;

class V1LocationInput {
  num latitude = null;

  num longitude = null;

  V1LocationInput();

  @override
  String toString() {
    return 'V1LocationInput[latitude=$latitude, longitude=$longitude, ]';
  }

  V1LocationInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    return {'latitude': latitude, 'longitude': longitude};
  }

  static List<V1LocationInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1LocationInput>()
        : json.map((value) => new V1LocationInput.fromJson(value)).toList();
  }

  static Map<String, V1LocationInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1LocationInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1LocationInput.fromJson(value));
    }
    return map;
  }
}
