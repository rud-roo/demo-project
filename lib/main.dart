import 'dart:js';

import 'package:demo_project/post_screen.dart';
import 'package:demo_project/responsive_screen.dart';
import 'package:demo_project/button_screen.dart';
import 'package:demo_project/profile.dart';
import 'package:demo_project/screem_3.dart';
import 'package:demo_project/screen_2.dart';
import 'package:demo_project/test_button.dart';
import 'package:demo_project/textfield_screen.dart';
import 'package:demo_project/theme.dart';
import 'package:demo_project/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/homepage.dart';
import 'package:demo_project/screen_1.dart';
import 'package:demo_project/contact_list.dart';
import 'package:demo_project/test_button.dart';
import 'package:demo_project/navigation_bar.dart';
import 'package:demo_project/navigation_bar.dart';

import 'counterApp.dart';

void main(){
  runApp(
    MaterialApp(
      title: "demo app",
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     headline1: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.w700,
      //       color: Colors.black,
      //     ),
      //     subtitle1: TextStyle(
      //       fontSize: 15,
      //       fontWeight: FontWeight.w700,
      //     ),
      //     caption: TextStyle(
      //       fontSize: 20,
      //       color: Colors.white.withOpacity(0.5),
      //     )
      //   ),
      //   // fontFamily: "OpenSans",
      //   // primaryColor: Colors.orange,
      //   // primaryColorDark: Colors.black,
      //   // brightness: Brightness.light,
      //   // cardColor: Colors.yellow,
      //   // iconTheme: IconThemeData(
      //   //   color: Colors.white,
      //   // ),
      //   // appBarTheme: AppBarTheme(
      //   //   color: Colors.green,
      //   // ),
      // ),

      // darkTheme: ThemeData(
      //   textTheme: TextTheme(
      //     headline1: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.w700,
      //       color: Colors.black,
      //     ),
      //     subtitle1: TextStyle(
      //       fontSize: 15,
      //       fontWeight: FontWeight.w700,
      //     ),
      //     caption: TextStyle(
      //       fontSize: 20,
      //       color: Colors.white.withOpacity(0.5),
      //     )
      //   ),
      //   // fontFamily: "OpenSans",
      //   // primaryColor: Colors.orange,
      //   // primaryColorDark: Colors.black,
      //   // brightness: Brightness.light,
      //   // cardColor: Colors.yellow,
      //   // iconTheme: IconThemeData(
      //   //   color: Colors.white,
      //   // ),
      //   // appBarTheme: AppBarTheme(
      //   //   color: Colors.green,
      //   // ),
      // ),
      
      // themeMode: ThemeMode.light,

      // home: HomePage(),
      // home: ProfileScreen(),
      // home: ContactList(),
      // home: ScreenOne(),
      // home:  ContactList(),
      // home: ButtonScreen(),
      // home: ButtonTest(),
      // home: HomeScreen(),
      // home: TextFieldScreen(),
      // home: CounterApp(),
      // home: ThemeScreen(),
      // home: ResponsiveScreen(),
      
      
      initialRoute: UserScreen.path,

      routes: {
        UserScreen.path: (context) => UserScreen(),
        PostScreen.path: (context) => PostScreen(),
        ScreenOne.path: (context) => ScreenOne(),
        ScreenTwo.path: (context) => ScreenTwo(),
        ScreenThree.path: (context) => ScreenThree(),
      },
    )
  );
}


