class  Category {
  late int category_id;
  late String name;
  late int product_id;

  Category({
    required this.category_id,
    required this.name,
    required this.product_id,
  });
  factory Category.fromJson(Map<String, dynamic> parsedJson) {
    return Category(
        category_id : parsedJson['category_id'],
        name: parsedJson['name'],
        product_id: parsedJson['product_id'],
    );
  }
  toJson() {
    Map<String, dynamic> json = {};
    json['category_id'] = category_id;
    json['name'] = name;
    json['product_id'] = product_id;
    return json;
  }
}
