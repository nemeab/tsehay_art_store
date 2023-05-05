class Products {
  int product_id;
  String name;
  num price;
  String image;
  String? description;

  Products({
    required this.product_id,
    required this.name,
    required this.price,
    required this.image,
    this.description,
  });
  factory Products.fromJson(Map<String, dynamic> parsedJson) {
    return Products(
        product_id: parsedJson['id'],
        name: parsedJson['name'],
        price: parsedJson['price'],
        image: parsedJson['avatar'],
        description: parsedJson['description']);
  }
  toJson() {
    Map<String, dynamic> json = {};
    json['product_id'] = product_id;
    json['name'] = name;
    json['price'] = price;
    json['image'] = image;
    json['description'] = description;
    return json;
  }

  static List productList(List product) {
    List products = [];
    for (var i = 0; i < product.length; i++) {
      products.add(Products.fromJson(product[i]));
    }
    return products;
  }
}
