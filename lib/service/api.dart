import 'package:dio/dio.dart';
import 'package:flutter_tutorial/model/user.dart';

class Api {
  static const endpoint = 'https://jsonplaceholder.typicode.com';

  Future<User> getUserProfile(int userId) async {
    try {
      Response response = await Dio().get('$endpoint/users/$userId');
      return User.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
