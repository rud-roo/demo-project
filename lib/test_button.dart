import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Primary"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Secondary"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Success"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Primary"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Secondary"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Success"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Waiting"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[600],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Danger"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Info"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[400],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Waiting"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow[600],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Danger"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Info"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Light",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[400],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Dark"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Link",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Light",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Dark"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Link",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.blue, width: 2),
                        ),
                        child: Text(
                          "Primary",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Secondary",
                            style: TextStyle(color: Colors.purple)),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.purple, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Success",
                          style: TextStyle(color: Colors.green),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Primary",
                          style: TextStyle(color: Colors.blue),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue, width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Secondary",
                          style: TextStyle(color: Colors.purple),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.purple, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Success",
                            style: TextStyle(color: Colors.green),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.green, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Colors.yellow.shade600, width: 2),
                        ),
                        child: Text(
                          "Waiting",
                          style: TextStyle(color: Colors.yellow[600]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child:
                            Text("Danger", style: TextStyle(color: Colors.red)),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.red, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Info",
                          style: TextStyle(color: Colors.lightBlue[400]),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Colors.lightBlue.shade400, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Waiting",
                          style: TextStyle(color: Colors.yellow[600]),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Colors.yellow.shade600, width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Danger",
                          style: TextStyle(color: Colors.red),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.red, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Info",
                            style: TextStyle(color: Colors.lightBlue[400]),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.lightBlue.shade600, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Light",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        style: OutlinedButton.styleFrom(
                          side:
                              BorderSide(color: Colors.grey.shade600, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Dark",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Link",
                          style: TextStyle(color: Colors.blue),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Light",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Colors.grey.shade600, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Dark",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),

            SizedBox(width: 60,),

            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Icon(Icons.settings_outlined, size: 20,),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
