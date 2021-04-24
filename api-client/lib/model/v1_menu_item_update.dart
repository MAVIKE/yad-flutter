part of swagger.api;

class V1MenuItemUpdate {
  int categoryId;

  String description;

  String image;

  int price;

  String title;

  V1MenuItemUpdate();

  @override
  String toString() {
    return 'V1MenuItemUpdate[categoryId=$categoryId, description=$description, image=$image, price=$price, title=$title, ]';
  }

  V1MenuItemUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    categoryId = json['category_id'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId,
      'description': description,
      'image': image,
      'price': price,
      'title': title
    };
  }

  static List<V1MenuItemUpdate> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => new V1MenuItemUpdate.fromJson(value)).toList();
  }

  static Map<String, V1MenuItemUpdate> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1MenuItemUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1MenuItemUpdate.fromJson(value));
    }
    return map;
  }
}
