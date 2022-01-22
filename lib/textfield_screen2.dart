import 'package:demo_project/textfield_screen.dart';
import 'package:flutter/material.dart';

class TextFieldScreenTwo extends StatefulWidget {
  const TextFieldScreenTwo({ Key? key }) : super(key: key);

  @override
  _TextFieldScreenTwoState createState() => _TextFieldScreenTwoState();
}

class _TextFieldScreenTwoState extends State<TextFieldScreenTwo> {

  bool isTap = false;
  bool isTap2 = false;
  bool isTap3 = false;
  bool isTap4 = false;
  bool isTap5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TextFieldScreen()));
                  },
                  icon: Icon(Icons.arrow_back_outlined),
                )
              ],
            ),
            Text(
              "Let's Get Started!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Creat an account to Q Alliue to get all features",
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
                  isTap3 = false;
                  isTap4 = false;
                  isTap5 = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Name",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
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
                ),
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              onTap: (){
                setState(() {
                  isTap = false;
                  isTap2 = true;
                  isTap3 = false;
                  isTap4 = false;
                  isTap5 = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Email",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
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
                  Icons.email_outlined,
                  color: isTap2? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              onTap: (){
                setState(() {
                  isTap = false;
                  isTap2 = false;
                  isTap3 = true;
                  isTap4 = false;
                  isTap5 = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Phone",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isTap3? Colors.blue : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: isTap3? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              onTap: (){
                setState(() {
                  isTap = false;
                  isTap2 = false;
                  isTap3 = false;
                  isTap4 = true;
                  isTap5 = false;
                });
              },
              decoration: InputDecoration(
                hintText: "Password",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isTap4? Colors.blue : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: isTap4? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              onTap: (){
                setState(() {
                  isTap = false;
                  isTap2 = false;
                  isTap3 = false;
                  isTap4 = false;
                  isTap5 = true;
                });
              },
              decoration: InputDecoration(
                hintText: "Confirm Password",

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isTap5? Colors.blue : Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: isTap5? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 30,),

            SizedBox(
              height: 40,
              width: 180,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Creat"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?", 
                  style: TextStyle(color: Colors.grey[900]),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text("Login here"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}