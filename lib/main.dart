import 'package:flutter/material.dart';
import 'package:practice_crio/mainpage.dart';
import 'mainpage.dart';

void main() {
  runApp(PracticeCrio());
}

class PracticeCrio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}


