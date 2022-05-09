import 'package:apicallwithprovider/services/api_services.dart';
import 'package:flutter/cupertino.dart';

import '../model/data_model.dart';

class UserController extends ChangeNotifier {
  List<UserDataModel>? userList = [];
  Future<List<UserDataModel>?> getAllUser() async {
    userList = (await Services.getApiData());
    print('This is list in fucking provider ${userList?.length}');

    notifyListeners();
    return userList;
  }
}
