part of swagger.api;

class V1MenuItemInput {
  int categoryId = null;

  String description = null;

  String image = null;

  int price = null;

  String title = null;

  V1MenuItemInput();

  @override
  String toString() {
    return 'V1MenuItemInput[categoryId=$categoryId, description=$description, image=$image, price=$price, title=$title, ]';
  }

  V1MenuItemInput.fromJson(Map<String, dynamic> json) {
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

  static List<V1MenuItemInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V1MenuItemInput>()
        : json.map((value) => new V1MenuItemInput.fromJson(value)).toList();
  }

  static Map<String, V1MenuItemInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V1MenuItemInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V1MenuItemInput.fromJson(value));
    }
    return map;
  }
}
