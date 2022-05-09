import 'package:apicallwithprovider/provider/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var userInfo = Provider.of<UserController>(context, listen: false);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("API WITH PROVIDER"),
          leading: const Icon(Icons.arrow_back),
        ),
        body: FutureBuilder(
            future: userInfo.getAllUser(),
            builder: (context, dataSnapshot) {
              if (dataSnapshot.hasData) {
                return ListView.builder(
                    itemCount: userInfo.userList!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title:
                            Text(userInfo.userList![index].userName.toString()),
                        leading: Text(userInfo.userList![index].id.toString()),
                        trailing:
                            Text(userInfo.userList![index].name.toString()),
                      );
                    });
              } else {
                const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                );
              }
              return Container();
            }));
  }
}
