import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
          title: Text(
            "i am poor",
            style: TextStyle(
              color: Colors.red[600],
              // color: Color(0xffff0000),
              fontFamily: "OpenSans",
              fontSize: 30,
              fontWeight: FontWeight.w700,
              letterSpacing: 4,
            ),
          ),
        ),


        // body: Center(
        //   child: Image.asset(
        //     "assets/dragon.jpg",
        //     height: 200,
        //     width: 200,
        //   ),
        // ),

        // body: Center(
        //   child: Image.network(
        //     "https://picsum.photos/250?image=9",
        //     height: 100,
        //     width: 100,
        //   ),
        // ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 70,
        //     backgroundImage: AssetImage("assets/dragon.jpg"),
        //   ),
        // ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 70,
        //     backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
        //   ),
        // ),


        // body: Container(
        //   height: double.infinity,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         color: Colors.tealAccent,
        //         child: FlutterLogo(size: 100,),
        //       ),
        //       Container(
        //         color: Colors.blueAccent,
        //         child: FlutterLogo(size: 100,),
        //       ),
        //       Container(
        //         color: Colors.cyanAccent,
        //         child: FlutterLogo(size: 100,),
        //       ),
        //     ],
        //   ),
        // ),


        // body: Container(
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         color: Colors.lightGreenAccent,
        //         child: FlutterLogo(size: 100,),
        //       ),
        //       Container(
        //         child: Row(
        //          mainAxisAlignment: MainAxisAlignment.center,
        //          crossAxisAlignment: CrossAxisAlignment.center,
        //          children: [
        //            Container(
        //              color: Colors.tealAccent,
        //              child: FlutterLogo(size: 100,),
        //            ),
        //            Container(
        //              color: Colors.blueAccent,
        //              child: FlutterLogo(size: 100,),
        //            ),
        //            Container(
        //              color: Colors.cyanAccent,
        //              child: FlutterLogo(size: 100,),
        //            ),
        //          ],
        //        ),
        //       ),
        //       Container(
        //         color: Colors.purpleAccent,
        //         child: FlutterLogo(size: 100,),
        //       ),
        //     ],
        //   ),
        // ),
        
    );
  }
}