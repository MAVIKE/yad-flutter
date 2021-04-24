part of swagger.api;

class DomainMenuItem {
  String description;

  int id;

  String image;

  int price;

  int restaurantId;

  String title;

  DomainMenuItem();

  @override
  String toString() {
    return 'DomainMenuItem[description=$description, id=$id, image=$image, price=$price, restaurantId=$restaurantId, title=$title, ]';
  }

  DomainMenuItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    id = json['id'];
    image = json['image'];
    price = json['price'];
    restaurantId = json['restaurant_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'id': id,
      'image': image,
      'price': price,
      'restaurant_id': restaurantId,
      'title': title
    };
  }

  static List<DomainMenuItem> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new DomainMenuItem.fromJson(value)).toList();
  }

  static Map<String, DomainMenuItem> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainMenuItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DomainMenuItem.fromJson(value));
    }
    return map;
  }
}
