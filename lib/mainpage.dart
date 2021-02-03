import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_crio/questions.dart';
import 'tasks.dart';
import 'dashboard.dart';
import 'customTabBar.dart';
import 'questions.dart';

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
            title: Text(
              'Your Companion',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Colors.white
              ),
            ),
            elevation: 20.0,
            shadowColor: Colors.orangeAccent,
            backgroundColor: Colors.deepOrange,
          ),
          drawer: CustomTabBar(),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Stack(
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
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 45.0, bottom: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tasks()));
                                setState(() {
                                  pressed = !pressed;
                                });
                              },
                              child: Text(
                                'Tasks',
                                style: pressed
                                    ? TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'fonts/Roboto-Black.ttf',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25.0)
                                    : TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'fonts/Roboto-Black.ttf',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard()));
                              },
                              child: Text('Dashboard',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'fonts/Roboto-Black.ttf',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.white,
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.messenger),
                      title: Text(
                        'Ready to answer a few Questions?',
                        style: TextStyle(
                            fontFamily: 'fonts/Robot-Black.ttf',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        'It will only take a minute',
                        style: TextStyle(
                            fontFamily: 'fonts/Robot-Black.ttf',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Questions()));
                          },
                          child: Text(
                            'Yes!',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'fonts/Roboto-Black.ttf',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Not now',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontFamily: 'fonts/Roboto-Black.ttf',
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 38.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
