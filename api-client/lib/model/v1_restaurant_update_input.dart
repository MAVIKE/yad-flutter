part of swagger.api;

class V1RestaurantUpdateInput {
  
  V1LocationInput address = null;
  

  String name = null;
  

  String password = null;
  

  int workingStatus = null;
  
  V1RestaurantUpdateInput();

  @override
  String toString() {
    return 'V1RestaurantUpdateInput[address=$address, name=$name, password=$password, workingStatus=$workingStatus, ]';
  }

  V1RestaurantUpdateInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address =
      
      
      new V1LocationInput.fromJson(json['address'])
;
    name =
        json['name']
    ;
    password =
        json['password']
    ;
    workingStatus =
        json['working_status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'name': name,
      'password': password,
      'working_status': workingStatus
     };
  }

  static List<V1RestaurantUpdateInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<V1RestaurantUpdateInput>() : json.map((value) => new V1RestaurantUpdateInput.fromJson(value)).toList();
  }

  static Map<String, V1RestaurantUpdateInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1RestaurantUpdateInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new V1RestaurantUpdateInput.fromJson(value));
    }
    return map;
  }
}

