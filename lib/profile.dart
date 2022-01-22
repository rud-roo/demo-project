import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/dragon.jpg"),
            ),
            Text(
              "Rudro Saha",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w700,
              )
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black.withOpacity(.50),
                fontFamily: "OpenSans",
                letterSpacing: 2,
              ),
            ),

            Divider(
              thickness: 1,
              color: Colors.black.withOpacity(.75),
              indent: 120,
              endIndent: 120,
              height: 40,
            ),

            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 22,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "+01900000000",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 22,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "xxxxx@gmailcom",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}