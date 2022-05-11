import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_controller.dart';
import '../view/graphandtime/date_time_picker_demo.dart';
import '../view/graphandtime/graph_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //TODO if you have one provider add single provider like this
        home: ChangeNotifierProvider(
            create: (context) => UserController(),
            child: const GraphChartDemo()));
  }
}
