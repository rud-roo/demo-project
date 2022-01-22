import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({ Key? key }) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int count = 0;

  _onCountPressed(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter App"),

        actions: [
          PopupMenuButton(
            onSelected: (value){
              print(value);

              if(value == 1){
                print("Screen One");
              }
              else if(value == 2){
                print("Screen Two");
              }
            },
            elevation: 20,
            tooltip: "Popup menu",
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                width: 2,
                color: Colors.orange,
              )
            ),
            offset: Offset(
              5.0, 56.0,
            ),
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Item 2"),
                  value: 2,
                )
              ];
            },
          )
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Increment number is $count")
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _onCountPressed();
          // _showDialogue(context);
        },
        backgroundColor: Colors.grey[700],
        hoverColor: Colors.black,
        tooltip: "Any text",
        child: Icon(Icons.add),
      ),

      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: (){
      //     _showDialogue(context);
      //   },
      //   backgroundColor: Colors.grey[700],
      //   hoverColor: Colors.black,
      //   tooltip: "Any text",
      //   label: Text("Add"),
      //   elevation: 10,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10),
      //     side: BorderSide(
      //       color: Colors.red,
      //       width: 2,
      //     )
      //   ),
      // ),
    );
  }
}


_showDialogue(BuildContext context){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("Simple Alert Dialogue"),
        content: Text("This is the body aler dialogue"),
        actions: [
          TextButton(
            onPressed: (){},
            child: Text("Yes"),
          ),

          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("No"),
          )
        ],
      );
    }
  );
}