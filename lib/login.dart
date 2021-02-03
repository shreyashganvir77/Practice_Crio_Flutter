import 'package:flutter/material.dart';
import 'package:practice_crio/mainpage.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepOrange, Colors.yellow],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to \n Your Companion',
              style: GoogleFonts.satisfy(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0,),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
                      child: TextFormField(
                        style: GoogleFonts.roboto(
                          fontSize: 22.0,
                          color: Colors.black,
                        ),
                        cursorHeight: 22.0,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black, ),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.grey),
                          ),
                          prefixIcon: Icon(Icons.email_rounded, color: Colors.black,),
                          hintText: 'Enter Your E-mail',
                          hintStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: TextFormField(
                        style: GoogleFonts.roboto(
                          fontSize: 22.0,
                          color: Colors.black,
                        ),
                        cursorHeight: 22.0,
                        cursorColor: Colors.black,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.black, ),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.grey),
                          ),
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 28.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.roboto(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
                        },
                        elevation: 20.0,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.redAccent, Colors.orange],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 42.0,
                          width: 135.0,
                          child: Center(
                            child: Text(
                              'LogIn',
                              style: GoogleFonts.roboto(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      clipBehavior: Clip.antiAlias,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Or SignIn Using',
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/google.png',),
                    child: MaterialButton(
                      elevation: 10.0,
                      onPressed: (){

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/facebook.png',),
                    child: MaterialButton(
                      elevation: 10.0,
                      onPressed: (){

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/twitter.png',),
                    child: MaterialButton(
                      elevation: 10.0,
                      onPressed: (){

                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
