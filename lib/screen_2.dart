import 'dart:js';

import 'package:demo_project/screem_3.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static final String path = "ScreenTwo";
  const ScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as List;
    // final data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        title: Text("Screen Two"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Name: ${data[0]} Age: ${data[1]}"),
            // Text("Name: ${data["name"]} Age: ${data["age"]}"),
            // Text("ID: ${data[0]} Name: ${data[1]} email: ${data[2]}"),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: Text(data[index]["id"].toString()),
                    title: Text(data[index]["name"]),
                    subtitle: Text(data[index]["email"]),
                  );
                },
              ),
            ),


            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenThree.path);

                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenThree()));
              },
              child: Text("Screen Three"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
      
    );
  }
}