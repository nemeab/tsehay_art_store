class Registration {
  final int? id;
  final String fullName;
  final String email;
  final String password;
  final String confirmPassword;

  const Registration(
      {required this.fullName,
      required this.email,
      required this.password,
      required this.confirmPassword,
      this.id});

  factory Registration.fromJson(Map<String, dynamic> json) => Registration(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
      confirmPassword: json['confirmPassword']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'email': email,
        'password': password,
        'ConfirmPassword': confirmPassword
      };
}
