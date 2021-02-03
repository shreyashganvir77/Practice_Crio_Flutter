import 'package:flutter/material.dart';
import 'tasks.dart';
import 'dashboard.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Companion',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Your Companion',),
            elevation: 20.0,
            shadowColor: Colors.orangeAccent,
            backgroundColor: Colors.deepOrange,
            leading: GestureDetector(
              child: Icon(
                Icons.menu,
              ),
              //onTap(){} ,
            ),
          ),
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Container(
                height: 70.0,
                color: Colors.deepOrange,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 42.0,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0, left: 45.0, bottom: 8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Tasks()));
                            setState(() {
                              pressed = ! pressed;
                            });
                          },
                          child: Text('Tasks', style: pressed
                              ? TextStyle(color: Colors.black, fontFamily: 'fonts/Roboto-Black.ttf', fontWeight: FontWeight.w600, fontSize: 25.0)
                              : TextStyle(color: Colors.white, fontFamily: 'fonts/Roboto-Black.ttf', fontWeight: FontWeight.w600, fontSize: 25.0), ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          color: Colors.deepOrangeAccent,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                          },
                          child: Text('Dashboard', style: TextStyle(fontSize: 25.0,)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
