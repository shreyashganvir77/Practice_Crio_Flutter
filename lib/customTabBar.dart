import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: Container(
              height: 200.0,
              child: Image(image: AssetImage('assets/profile_photo.png'),),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Get Professional Help', style: TextStyle(fontFamily: 'fonts/Robot-Black.ttf', fontWeight: FontWeight.w500, fontSize: 20.0),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Logout', style: TextStyle(fontFamily: 'fonts/Robot-Black.ttf', fontWeight: FontWeight.w500, fontSize: 20.0),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Clear All Accounts', style: TextStyle(fontFamily: 'fonts/Robot-Black.ttf', fontWeight: FontWeight.w500, fontSize: 20.0),),
          ),
        ],
      ),
    );
  }
}

