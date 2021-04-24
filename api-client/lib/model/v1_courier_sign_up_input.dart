part of swagger.api;

class V1CourierSignUpInput {
  V1LocationInput address;

  String email;

  String name;

  String password;

  String phone;

  int workingStatus;

  V1CourierSignUpInput();

  @override
  String toString() {
    return 'V1CourierSignUpInput[address=$address, email=$email, name=$name, password=$password, phone=$phone, workingStatus=$workingStatus, ]';
  }

  V1CourierSignUpInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = new V1LocationInput.fromJson(json['address']);
    email = json['email'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    workingStatus = json['working_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'name': name,
      'password': password,
      'phone': phone,
      'working_status': workingStatus
    };
  }

  static List<V1CourierSignUpInput> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json
            .map((value) => new V1CourierSignUpInput.fromJson(value))
            .toList();
  }

  static Map<String, V1CourierSignUpInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1CourierSignUpInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1CourierSignUpInput.fromJson(value));
    }
    return map;
  }
}
