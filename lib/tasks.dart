import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

Widget customCard(String image) => Card(
  semanticContainer: true,
  borderOnForeground: true,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  elevation: 8.0,
  child: Image(
    image: AssetImage(image),
    height: 250,
    fit: BoxFit.fill,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
  margin: EdgeInsets.only(top:14, left: 14, right: 14, bottom: 10),
);

class Tasks extends StatefulWidget{
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> with SingleTickerProviderStateMixin {
  AnimationController controller;

  bool _pressed1 = true;
  bool _pressed2 = true;
  bool _pressed3 = true;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(
        seconds: 600,
      ),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Companion',
          ),
          elevation: 20.0,
          shadowColor: Colors.orangeAccent,
          backgroundColor: Colors.deepOrange,
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
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 45.0, bottom: 8.0),
                          child: GestureDetector(
                            child: Text(
                              'Tasks',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'fonts/Roboto-Black.ttf'),
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
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'fonts/Roboto-Black.ttf')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              visible:_pressed1,
              child: GestureDetector(
                  onLongPress: (){
                    setState(() {
                      _pressed1 =! _pressed1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customCard('assets/parks_families.jpg'),
                      Text(
                        'Go Out! Meet a few people today',
                        style: TextStyle(
                            fontFamily: 'fonts/Roboto-Black.ttf',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  )
              ),),
            Visibility(
              visible:_pressed2,
              child: GestureDetector(
                  onLongPress: (){
                    setState(() {
                      _pressed2 =! _pressed2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customCard('assets/music.jpg'),
                      Text(
                        'Listen to your favourite Music',
                        style: TextStyle(
                            fontFamily: 'fonts/Roboto-Black.ttf',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  )
              ),),
            Visibility(
              visible:_pressed3,
              child: GestureDetector(
                  onLongPress: (){
                    setState(() {
                      _pressed3 =! _pressed3;
                    });
                  },
                  child: Column(
                    children: [
                      customCard('assets/exercise.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Complete your daily Exercise',
                          style: TextStyle(
                              fontFamily: 'fonts/Roboto-Black.ttf',
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  )
              ),),
            customCard('assets/monkey.png'),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Yay! You did good today',
                style: TextStyle(
                    fontFamily: 'fonts/Roboto-Black.ttf',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ));
  }
}







// class Tasks extends StatefulWidget {
//   @override
//   _TasksState createState() => _TasksState();
// }
//
// class _TasksState extends State<Tasks> {
//   AnimationController controller;
//   bool _pressed1 = true;
//   bool _pressed2 = true;
//   bool _pressed3 = true;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //title: 'Your Companion',
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'Your Companion',
//             ),
//             elevation: 20.0,
//             shadowColor: Colors.orangeAccent,
//             backgroundColor: Colors.deepOrange,
//             leading: GestureDetector(
//               child: Icon(
//                 Icons.menu,
//               ),
//               //onTap(){} ,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           body: ListView(
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 70.0,
//                     color: Colors.deepOrange,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Container(
//                       height: 42.0,
//                       decoration: BoxDecoration(
//                         color: Colors.deepOrangeAccent,
//                         borderRadius: BorderRadius.circular(40.0),
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 top: 8.0, left: 45.0, bottom: 8.0),
//                             child: GestureDetector(
//                               child: Text(
//                                 'Tasks',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 25.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: 'fonts/Roboto-Black.ttf'),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 80.0,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Dashboard()));
//                               },
//                               child: Text('Dashboard',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 25.0,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'fonts/Roboto-Black.ttf')),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Visibility(
//                 visible:_pressed1,
//                 child: GestureDetector(
//                   onLongPress: (){
//                     setState(() {
//                       _pressed1 =! _pressed1;
//                     });
//                   },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CustomCard('assets/parks_families.jpg'),
//                         Text(
//                           'Go Out! Meet a few people today',
//                           style: TextStyle(
//                               fontFamily: 'fonts/Roboto-Black.ttf',
//                               fontSize: 22.0,
//                               fontWeight: FontWeight.w300),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                       ],
//                     )
//                 ),),
//               Visibility(
//                 visible:_pressed2,
//                 child: GestureDetector(
//                     onLongPress: (){
//                       setState(() {
//                         _pressed2 =! _pressed2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CustomCard('assets/music.jpg'),
//                         Text(
//                           'Listen to your favourite Music',
//                           style: TextStyle(
//                               fontFamily: 'fonts/Roboto-Black.ttf',
//                               fontSize: 22.0,
//                               fontWeight: FontWeight.w300),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                       ],
//                     )
//                 ),),
//               Visibility(
//                 visible:_pressed3,
//                 child: GestureDetector(
//                     onLongPress: (){
//                       setState(() {
//                         _pressed3 =! _pressed3;
//                       });
//                     },
//                     child: Column(
//                       children: [
//                         CustomCard('assets/exercise.png'),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 16.0),
//                           child: Text(
//                             'Complete your daily Exercise',
//                             style: TextStyle(
//                                 fontFamily: 'fonts/Roboto-Black.ttf',
//                                 fontSize: 22.0,
//                                 fontWeight: FontWeight.w300),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                       ],
//                     )
//                 ),),
//               CustomCard('assets/monkey.png'),
//               Padding(
//                 padding: const EdgeInsets.only(left: 16.0),
//                 child: Text(
//                   'Yay! You did good today',
//                   style: TextStyle(
//                       fontFamily: 'fonts/Roboto-Black.ttf',
//                       fontSize: 22.0,
//                       fontWeight: FontWeight.w300),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//             ],
//           )),
//     );
//   }
// }
