part of swagger.api;

class DomainCourier {
  String email;

  int id;

  DomainLocation location;

  String name;

  String password;

  String phone;

  int workingStatus;

  DomainCourier();

  @override
  String toString() {
    return 'DomainCourier[email=$email, id=$id, location=$location, name=$name, password=$password, phone=$phone, workingStatus=$workingStatus, ]';
  }

  DomainCourier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    id = json['id'];
    location = new DomainLocation.fromJson(json['location']);
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    workingStatus = json['working_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'id': id,
      'location': location,
      'name': name,
      'password': password,
      'phone': phone,
      'working_status': workingStatus
    };
  }

  static List<DomainCourier> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new DomainCourier.fromJson(value)).toList();
  }

  static Map<String, DomainCourier> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainCourier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainCourier.fromJson(value));
    }
    return map;
  }
}
