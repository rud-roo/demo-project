import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserScreen extends StatefulWidget {
  static const String path = "UserScreen";
  const UserScreen({ Key? key }) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  final url = "https://jsonplaceholder.typicode.com/users";
  List users = [];

  Future getUsers()async{
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      setState(() {
        users = jsonDecode(response.body);
      });
      print(users);
    }
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("UserScreen"),
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: [
                Text(users[index]["name"]),
                Text(users[index]["email"]),
                Text(users[index]["address"]["city"]),
              ],
            ),
          );
        },
      ),
    );
  }
}