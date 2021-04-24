part of swagger.api;

class V1SignInInput {
  String name = null;

  String password = null;

  V1SignInInput();

  @override
  String toString() {
    return 'V1SignInInput[name=$name, password=$password, ]';
  }

  V1SignInInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'password': password};
  }

  static List<V1SignInInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1SignInInput>()
        : json.map((value) => new V1SignInInput.fromJson(value)).toList();
  }

  static Map<String, V1SignInInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1SignInInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1SignInInput.fromJson(value));
    }
    return map;
  }
}
