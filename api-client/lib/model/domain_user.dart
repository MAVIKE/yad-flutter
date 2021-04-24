part of swagger.api;

class DomainUser {
  String email;

  int id;

  DomainLocation location;

  String name;

  String password;

  String phone;

  DomainUser();

  @override
  String toString() {
    return 'DomainUser[email=$email, id=$id, location=$location, name=$name, password=$password, phone=$phone, ]';
  }

  DomainUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    id = json['id'];
    location = new DomainLocation.fromJson(json['location']);
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'id': id,
      'location': location,
      'name': name,
      'password': password,
      'phone': phone
    };
  }

  static List<DomainUser> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new DomainUser.fromJson(value)).toList();
  }

  static Map<String, DomainUser> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainUser.fromJson(value));
    }
    return map;
  }
}
