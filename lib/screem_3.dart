import 'package:demo_project/screen_1.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  static final String path = "ScreenThree";
  const ScreenThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen Three"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        )
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, ScreenOne.path, (route) => false);
          },
          child: Text("back"),
        )
      ),
    );
  }
}