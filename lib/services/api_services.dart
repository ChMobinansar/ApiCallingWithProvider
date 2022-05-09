import 'dart:convert';

import 'package:apicallwithprovider/model/data_model.dart';
import 'package:http/http.dart' as http;

class Services {
  static const String url = "https://jsonplaceholder.typicode.com/users";
  static Future<List<UserDataModel>?> getApiData() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<UserDataModel> usersList = [];
        List users = json.decode(response.body);
        if (users.isNotEmpty) {
          users.forEach((user) {
            usersList.add(UserDataModel.fromJson(user));
          });
        }
        if (usersList.isNotEmpty) {
          print(usersList.length);
          return usersList;
        } else {
          return null;
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('I am Exception: $e');
      rethrow;
    }
  }
}
