import 'package:apicallwithprovider/view/homescreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //TODO if you have one provider add single provider like this
        home: ChangeNotifierProvider(
            create: (context) => UserController(), child: HomeScreen()));
  }
}
