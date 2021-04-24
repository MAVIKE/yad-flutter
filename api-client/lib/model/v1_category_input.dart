part of swagger.api;

class V1CategoryInput {
  String title = null;

  V1CategoryInput();

  @override
  String toString() {
    return 'V1CategoryInput[title=$title, ]';
  }

  V1CategoryInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    return {'title': title};
  }

  static List<V1CategoryInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1CategoryInput>()
        : json.map((value) => new V1CategoryInput.fromJson(value)).toList();
  }

  static Map<String, V1CategoryInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1CategoryInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1CategoryInput.fromJson(value));
    }
    return map;
  }
}
