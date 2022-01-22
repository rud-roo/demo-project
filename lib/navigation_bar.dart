import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BottomNavigationBar"),
      ),
      body: screens.elementAt(selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.yellow,
          ),
        ],

        currentIndex: selectedIndex,
        onTap: (int index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}