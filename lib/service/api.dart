import 'package:dio/dio.dart';
import 'package:flutter_tutorial/model/users.dart';

class Api {
  static const endpoint = 'https://jsonplaceholder.typicode.com';

  Future<User> getUserProfile(int userId) async {
    try {
      Response response = await Dio().get('$endpoint/users/$userId');
      print(response.data);
      return User.fromMap(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
