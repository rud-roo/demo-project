import 'package:flutter/material.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({ Key? key }) : super(key: key);

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {

  bool _isDark = false;
  ThemeMode _tm = ThemeMode.light;
  Color _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black
          ),
          subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.grey[600],
          ),
          caption: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          )
        ),
      ),

      darkTheme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.white
          ),
          subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.grey[600],
          ),
          caption: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          )
        ),
      ),
      
      themeMode: _tm,


      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Material(
              color: _bgColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text(
                            "Account Settings",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            customBorder: CircleBorder(),
                            radius: 60,
                            onTap: (){
                              setState(() {
                                if(_isDark){
                                  _isDark = false;
                                  _bgColor = Colors.white;
                                  _tm = ThemeMode.light;
                                }
                                else{
                                  _isDark = true;
                                  _bgColor = Colors.black;
                                  _tm = ThemeMode.dark;
                                }
                              });
                            },
                            child: Transform.rotate(
                              angle: -(3.1416 / 180) * 45,
                              child: Icon(
                                _isDark? 
                                  Icons.nightlight_round_outlined
                                  : IconData(0xee81, fontFamily: 'IconFont'),
                                  color: _isDark? Colors.white : Colors.black,
                                  size: 35,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 20,
                        ),
                        child: Text(
                          "Update your settings like profile edit,\nchange password etc.",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                
                    ListTile(
                      onTap: (){},
                      leading: Icon(Icons.person, color: Colors.grey,),
                      title: Text(
                        "Edit profile",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: Text(
                        "Change your profile information",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    Divider(
                      height: 1,
                    ),
                
                    ListTile(
                      onTap: (){},
                      leading: Icon(Icons.lock, color: Colors.grey,),
                      title: Text(
                        "Change Password",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: Text(
                        "Change your password",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    Divider(
                      height: 1,
                    ),
                
                    ListTile(
                      onTap: (){},
                      leading: Icon(Icons.share, color: Colors.grey,),
                      title: Text(
                        "Share to Friends",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: Text(
                        "Get \$5 to reffering friend",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    Divider(
                      height: 1,
                    ),
                
                    ListTile(
                      onTap: (){},
                      leading: Icon(Icons.power_settings_new, color: Colors.grey,),
                      title: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: Text(
                        "logout and try different login",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    Divider(
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}