import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button Screen"),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Sign in", style: TextStyle(fontSize: 26),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 10,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.green,
                      width: 3
                    )
                  )
                ),
              ),
            ),

            TextButton(
              onPressed: (){},
              child: Text("Sign in"),
            ),

            OutlinedButton(
              onPressed: (){},
              child: Text("Sign in"),
            ),

            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.facebook),
              label: Text("Log in with facebook"),
            )
          ],
        ),
      ),
    );
  }
}