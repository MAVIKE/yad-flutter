part of swagger.api;

class V1UserSignUpInput {
  V1LocationInput address = null;

  String email = null;

  String name = null;

  String password = null;

  String phone = null;

  V1UserSignUpInput();

  @override
  String toString() {
    return 'V1UserSignUpInput[address=$address, email=$email, name=$name, password=$password, phone=$phone, ]';
  }

  V1UserSignUpInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = new V1LocationInput.fromJson(json['address']);
    email = json['email'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'name': name,
      'password': password,
      'phone': phone
    };
  }

  static List<V1UserSignUpInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1UserSignUpInput>()
        : json.map((value) => new V1UserSignUpInput.fromJson(value)).toList();
  }

  static Map<String, V1UserSignUpInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1UserSignUpInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1UserSignUpInput.fromJson(value));
    }
    return map;
  }
}
