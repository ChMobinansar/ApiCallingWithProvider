import 'package:apicallwithprovider/provider/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myapp/my_app.dart';

void main() {
  runApp(MyApp());
  // runApp(MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (_) => UserController()),
  //   ],
  //   child: MyApp(),
  // ));
}
