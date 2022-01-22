import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Responsive Screen"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.blue,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
            Container(
              child: Wrap(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.black,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.brown,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}