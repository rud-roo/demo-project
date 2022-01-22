import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.yellow[300],
        title: Text(
          "Contact List",
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        // leading: Icon(Icons.menu, color: Colors.black,),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black,)],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("background.jpeg"),
                Positioned(
                  top: 20,
                  left: 25,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("profile.jpg"),
                      ),
                      Text(
                        "Rudro Saha",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "saharudro15@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.home,
                color: Colors.purple,
              ),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.music_note,
                color: Colors.purple,
              ),
              title: Text("Music"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.settings,
                color: Colors.purple,
              ),
              title: Text("Settings"),
            ),
            
            Material(
              color: Colors.lightBlue[100],
              child: InkWell(
                onTap: (){
                  print("Button tapped");
                },
                hoverColor: Colors.grey[50],
                focusColor: Colors.blue,
                highlightColor: Colors.yellow,
                child: Container(
                  child: Center(
                    child: Text("Logout",),
                  ),
                  width: double.infinity,
                  height: 48,
                ),
              ),
            )

            //  Material(
            //   color: Colors.teal,
            //   child: InkWell(
            //     onTap: (){
            //       print("Button Tapped");
            //     },
            //     hoverColor: Colors.brown,
            //     focusColor: Colors.blue,
            //     highlightColor: Colors.grey,
            //     child: Container(
            //       child: Center(child: Text("Log out")),
            //       width: double.infinity,
            //       height: 48,
            //       // color: Colors.blue,
            //     ),
            //   ),
            //  )
          ],
        )
      ),

      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            thickness: 0.5,
            color: Colors.grey[600],
            height: 0,
          );
        },
        itemCount: 60,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            onTap: (){

            },
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("dragon.jpg"),
            ),
            title: Text("Rudro"),
            subtitle: Text("Flutter Developer"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call),
                SizedBox(width: 5,),
                Icon(Icons.message),
                SizedBox(width: 5,),
                Icon(Icons.delete),
              ],
            )
          );
        }
      ),
    );
  }
}