import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostScreen extends StatefulWidget {

  static const String path = "PostScreen";

  const PostScreen({ Key? key }) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  List posts = [];
  final uri = "https://jsonplaceholder.typicode.com/posts";

  Future getPost()async{
    final response = await http.get(Uri.parse(uri));
    if(response.statusCode == 200){
      setState(() {
        posts = jsonDecode(response.body);
      });
        print(posts);
    }
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Post Screen"),
      ),

      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          );
        },

        itemCount: posts.length,

        itemBuilder: (BuildContext context, int index){
          return ListTile(
            onTap: (){},
            title: Text(posts[index]["title"]),
            subtitle: Text(posts[index]["body"]),
          );
        },
      ),
    );
  }
}