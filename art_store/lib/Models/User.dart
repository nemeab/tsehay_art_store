class  User {
  late int user_id;
  late String name;
  late String email;
  late String image;
  String? phone_number;
  late int password;

  User({
    required this.user_id,
    required this.name,
    required this.email,
    required this.image,
    this.phone_number,
    required this.password,
  });
  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
        user_id : parsedJson['user_id'],
        name: parsedJson['name'],
        email: parsedJson['email'],
        image: parsedJson['image'],
        phone_number: parsedJson['phone_number'],
        password: parsedJson['password'],
    );
  }
  toJson() {
    Map<String, dynamic> json = {};
    json['user_id'] = user_id;
    json['name'] = name;
    json['email'] = email;
    json['image'] = image;
    json['phone_number'] = phone_number;
    json['password'] = password;
    return json;
  }
}
