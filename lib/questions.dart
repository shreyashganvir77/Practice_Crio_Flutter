import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_crio/mainpage.dart';
import 'mainpage.dart';

class Quesalgo {
  int _index = 0;

  List<Ques> ques = [
    Ques(
      ques: 'How many people did you meet today?',
      one: '5',
      two: '10',
      three: '15',
    ),
    Ques(
      ques: 'How many songs did you add to your playlist?',
      one: '1',
      two: '3',
      three: '5',
    ),
    Ques(
      ques: 'How much time did you practice yoga?',
      one: '30',
      two: '45',
      three: '60',
    )
  ];

  void restart() {
    _index = 0;
  }
}

List<int> answers = [];

class Ques {
  String ques;
  String one;
  String two;
  String three;

  Ques({this.ques, this.one, this.two, this.three});
}

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  int index = Quesalgo()._index;

  bool pressed1 = false;
  bool pressed2 = false;
  bool pressed3 = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.red, Colors.orange],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, left: 10.0, right: 5.0),
                child: Text(
                  Quesalgo().ques[index].ques,
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'fonts/Roboto-Black.ttf'),
                ),
              ),
              SizedBox(height: 180.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    answers.add(1);
                    setState(() {
                      pressed1 = !pressed1;
                      pressed2 = false;
                      pressed3 = false;
                    });
                    print(pressed1);
                  },
                  child: option1(Quesalgo().ques[index].one, '1', pressed1),
                ),
              ),
              SizedBox(height: 18.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    answers.add(2);
                    setState(() {
                      pressed2 = !pressed2;
                      pressed1 = false;
                      pressed3 = false;
                      print('detected');
                    });
                  },
                  child: option1(Quesalgo().ques[index].two, '2', pressed2),
                ),
              ),
              SizedBox(height: 18.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    answers.add(3);
                    setState(() {
                      pressed3 = !pressed3;
                      pressed1 = false;
                      pressed2 = false;
                    });
                    print('detected');
                  },
                  child: option1(Quesalgo().ques[index].three, '3', pressed3),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index++;
                    print('detected');
                    pressed1 = false;
                    pressed2 = false;
                    pressed3 = false;
                    if (index == 3) {
                      print(answers);
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    }
                  });
                },
                child: Text(
                  'N E X T',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'fonts/Roboto-Black.ttf',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget option1(String ans, String choice, bool pressed) => Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: Colors.blueAccent,
      child: Row(
        children: [
          SizedBox(
            width: 25.0,
          ),
          CircleAvatar(
            child: Center(
              child: Text(
                choice,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'fonts/Roboto-Black.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 33.0,
                ),
              ),
            ),
            radius: 17.0,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            width: 250.0,
          ),
          Text(
            ans,
            style: pressed
                ? TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'fonts/Roboto-Black.ttf',
                    fontWeight: FontWeight.w400,
                    fontSize: 35.0,
                  )
                : TextStyle(
                    color: Colors.white,
                    fontFamily: 'fonts/Roboto-Black.ttf',
                    fontWeight: FontWeight.w400,
                    fontSize: 35.0,
                  ),
          ),
        ],
      ),
    );
