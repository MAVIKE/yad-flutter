part of swagger.api;

class V1RestaurantSignUpInput {
  V1LocationInput address;

  String image;

  String name;

  String password;

  String phone;

  int workingStatus;

  V1RestaurantSignUpInput();

  @override
  String toString() {
    return 'V1RestaurantSignUpInput[address=$address, image=$image, name=$name, password=$password, phone=$phone, workingStatus=$workingStatus, ]';
  }

  V1RestaurantSignUpInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = new V1LocationInput.fromJson(json['address']);
    image = json['image'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    workingStatus = json['working_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'image': image,
      'name': name,
      'password': password,
      'phone': phone,
      'working_status': workingStatus
    };
  }

  static List<V1RestaurantSignUpInput> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json
            .map((value) => new V1RestaurantSignUpInput.fromJson(value))
            .toList();
  }

  static Map<String, V1RestaurantSignUpInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1RestaurantSignUpInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1RestaurantSignUpInput.fromJson(value));
    }
    return map;
  }
}
