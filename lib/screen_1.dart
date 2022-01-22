import 'package:demo_project/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {

  static final String path = "ScreenOne";
  
  ScreenOne({ Key? key }) : super(key: key);

  String name = "Rudro";
  int age = 20;

  List<Map<String, dynamic>> people = [
    {
      "id": 01,
      "name": "Rudro",
      "email": "rslucifer71@gmail.com",
    },
    {
      "id": 02,
      "name": "Niloy",
      "email": "niloy15@gmail.com",
    },
    {
      "id": 03,
      "name": "Istiak",
      "email": "istiak69@gmail.com",
    }
  ];

  Future launchURL (String url) async{
    if(await canLaunch(url)){
      return launch(url);
    }
    else{
      throw "Couldn't launch url";
    }
  }

  Future launchGmail (String url) async{
    if(await canLaunch(url)){
      return launchGmail(url);
    }
    else{
      throw "Couldn't launch url";
    }
  }

  Future launchSMS (String url) async{
    if(await canLaunch(url)){
      return launchSMS(url);
    }
    else{
      throw "Couldn't launch url";
    }
  }

  Future launchPhone (String url) async{
    if(await canLaunch(url)){
      return launchPhone(url);
    }
    else{
      throw "Couldn't launch url";
    }
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen One"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card(
            //   child: SizedBox(
            //     height: 150,
            //     width: 150,
            //   ),
            // ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColorDark,
              ),
              onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.path, arguments: people);


                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));

                // Route route = MaterialPageRoute(builder: (context)=> ScreenTwo());
                // Navigator.push(context, route);

                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return ScreenTwo();
                // }));
              },
              child: Text("Screnn two"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await launchURL("https://flutter.dev/");
          // await launchGmail("'mailto:${people[1]["email"]}?subject=News&body=New%20plugin'");
          // await launchSMS('sms:asdnasjjdn mas dfjas');
          // await launchPhone("tel:+1 555 010 999");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}