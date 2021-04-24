part of swagger.api;

class V1CourierUpdate {
  V1LocationInput address = null;

  String email = null;

  String name = null;

  String password = null;

  int workingStatus = null;

  V1CourierUpdate();

  @override
  String toString() {
    return 'V1CourierUpdate[address=$address, email=$email, name=$name, password=$password, workingStatus=$workingStatus, ]';
  }

  V1CourierUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = new V1LocationInput.fromJson(json['address']);
    email = json['email'];
    name = json['name'];
    password = json['password'];
    workingStatus = json['working_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'name': name,
      'password': password,
      'working_status': workingStatus
    };
  }

  static List<V1CourierUpdate> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1CourierUpdate>()
        : json.map((value) => new V1CourierUpdate.fromJson(value)).toList();
  }

  static Map<String, V1CourierUpdate> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1CourierUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1CourierUpdate.fromJson(value));
    }
    return map;
  }
}
