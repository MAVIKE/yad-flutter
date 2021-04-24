part of swagger.api;

class DomainRestaurant {
  int id = null;

  String image = null;

  DomainLocation location = null;

  String name = null;

  String password = null;

  String phone = null;

  int workingStatus = null;

  DomainRestaurant();

  @override
  String toString() {
    return 'DomainRestaurant[id=$id, image=$image, location=$location, name=$name, password=$password, phone=$phone, workingStatus=$workingStatus, ]';
  }

  DomainRestaurant.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    image = json['image'];
    location = new DomainLocation.fromJson(json['location']);
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    workingStatus = json['working_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'location': location,
      'name': name,
      'password': password,
      'phone': phone,
      'working_status': workingStatus
    };
  }

  static List<DomainRestaurant> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DomainRestaurant>()
        : json.map((value) => new DomainRestaurant.fromJson(value)).toList();
  }

  static Map<String, DomainRestaurant> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainRestaurant>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainRestaurant.fromJson(value));
    }
    return map;
  }
}
