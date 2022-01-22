import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:demo_project/textfield_screen2.dart';
import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({ Key? key }) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  bool isTap = false;
  bool isTap2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Log in to your axistance account of Q Alliure",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30,),

            TextField(
              onTap: (){
                setState(() {
                  isTap = true;
                  isTap2 = false;
                });
              },
              keyboardType: TextInputType.text,
              // maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter email",
                hintStyle: TextStyle(fontSize: 15),
                // labelText: "Email",

                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide(
                  //   color: Colors.black,
                  // ),
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25)
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isTap? Colors.blue : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: isTap? Colors.blue : Colors.grey,
                )
              ),
            ),
            SizedBox(height: 15,),

            TextField(
              onTap: (){
                setState(() {
                  isTap2 = true;
                  isTap = false;
                });
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter Password",
                hintStyle: TextStyle(fontSize: 15),
                // labelText: "Password",

                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide(
                  //   color: Colors.black,
                  // ),
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25)
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isTap2? Colors.blue : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: isTap2? Colors.blue : Colors.grey,
                ),
              ),
            ),

            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("LOG IN"),
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  primary: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Text(
              "Or connect using",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  width: 180,
                  child: ElevatedButton.icon(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    label: Text("Facebook")
                  ),
                ),

                SizedBox(
                  height: 40,
                  width: 180,
                  child: ElevatedButton.icon(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    icon: FaIcon(FontAwesomeIcons.google),
                    label: Text("Google")
                  ),
                )
              ],
            ),

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?", 
                  style: TextStyle(color: Colors.grey[900]),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TextFieldScreenTwo()));
                  },
                  child: Text("Sign up"),
                ),
                // TextButton.icon(
                //   onPressed: (){},
                //   icon: Icon(Icons.facebook),
                //   label: Text("Facebook")
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}