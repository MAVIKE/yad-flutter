part of swagger.api;

class V1UserUpdateInput {
  V1LocationInput address = null;

  String email = null;

  String name = null;

  String password = null;

  V1UserUpdateInput();

  @override
  String toString() {
    return 'V1UserUpdateInput[address=$address, email=$email, name=$name, password=$password, ]';
  }

  V1UserUpdateInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = new V1LocationInput.fromJson(json['address']);
    email = json['email'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'name': name,
      'password': password
    };
  }

  static List<V1UserUpdateInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1UserUpdateInput>()
        : json.map((value) => new V1UserUpdateInput.fromJson(value)).toList();
  }

  static Map<String, V1UserUpdateInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1UserUpdateInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1UserUpdateInput.fromJson(value));
    }
    return map;
  }
}
