import 'package:apicallwithprovider/provider/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myapp/my_app.dart';

void main() {
  runApp(MyApp());
  //TODO for all multiple provider in main class
  // runApp(MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (_) => UserController()),
  //   ],
  //   child: MyApp(),
  // ));
}
