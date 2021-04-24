part of swagger.api;

class DomainLocation {
  
  num latitude = null;
  

  num longitude = null;
  
  DomainLocation();

  @override
  String toString() {
    return 'DomainLocation[latitude=$latitude, longitude=$longitude, ]';
  }

  DomainLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latitude =
        json['latitude']
    ;
    longitude =
        json['longitude']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude
     };
  }

  static List<DomainLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainLocation>() : json.map((value) => new DomainLocation.fromJson(value)).toList();
  }

  static Map<String, DomainLocation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainLocation.fromJson(value));
    }
    return map;
  }
}

