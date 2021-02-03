import 'package:flutter/material.dart';
import 'tasks.dart';

Widget card1 = Padding(
  padding: EdgeInsets.all(10.0),
  child: Container(
    height: 300.0,
    //color: Colors.blue,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage('assets/party.png'),
          fit: BoxFit.fill,
        )
    ),
  ),
);

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
          body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
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
                            padding: const EdgeInsets.only(top:8.0, left: 45.0, bottom: 8.0),
                            child: FlatButton(
                              color: Colors.deepOrangeAccent,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>Tasks()));
                              },
                              child: Text('Tasks', style: TextStyle(color: Colors.black,fontSize: 25.0, fontWeight: FontWeight.w600, fontFamily: 'fonts/Roboto-Black.ttf'),),
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
                              child: Text('Dashboard', style: TextStyle(color: Colors.white,fontSize: 25.0, fontWeight: FontWeight.w600, fontFamily: 'fonts/Roboto-Black.ttf')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              card1,

            ],
          )
      ),
    );
  }
}
