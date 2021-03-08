import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_crio/authentication.dart';
import 'package:practice_crio/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practice_crio/login.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MultiProvider(
        providers: [
          Provider<AuthService>(
            create: (_) => AuthService(auth: FirebaseAuth.instance),
          ),
          StreamProvider(
              initialData: null,
              create: (context) => context.read<AuthService>().onAuthStateChange),
        ],
        child: MaterialApp(
          home: MyApp(),
        ),
      ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Result();
;  }
}

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthService>().onAuthStateChange;
    if(user == null){
      print('no user');
      return LoginPage();
    }else{
      print('user is there');
      return MainPage();
    }
  }
}

