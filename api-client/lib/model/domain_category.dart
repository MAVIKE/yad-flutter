part of swagger.api;

class DomainCategory {
  
  int id = null;
  

  int restaurantId = null;
  

  String title = null;
  
  DomainCategory();

  @override
  String toString() {
    return 'DomainCategory[id=$id, restaurantId=$restaurantId, title=$title, ]';
  }

  DomainCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    restaurantId =
        json['restaurant_id']
    ;
    title =
        json['title']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'restaurant_id': restaurantId,
      'title': title
     };
  }

  static List<DomainCategory> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainCategory>() : json.map((value) => new DomainCategory.fromJson(value)).toList();
  }

  static Map<String, DomainCategory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainCategory.fromJson(value));
    }
    return map;
  }
}

