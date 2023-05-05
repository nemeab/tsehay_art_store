import 'dart:convert';

import 'package:art_store/screen/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
      imagepath:
          'https://www.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg',
      name: 'Natnael debebebe',
      email: 'natnaeldebebe463@gmail.com',
      about: 'iam an artist');
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future SetUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
