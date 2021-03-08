import 'package:flutter/material.dart';
import 'package:practice_crio/mainpage.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_crio/authentication.dart';

class LoginPage extends StatelessWidget {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        onChanged: (val){
                          email = val.trim();
                        },
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
                        onChanged: (val){
                          password = val.trim();
                        },
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
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide.none
                        ),
                        onPressed: () async {
                          dynamic result = await context.read<AuthService>().signIn(email, password);
                          if(result == "Signed In Successfully"){
                            print('Signed In');
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
                          }
                          else{
                            print("Error");
                          }
                        },
                        child: Container(
                          height: 40.0,
                          width: 135.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.deepOrange, Colors.orangeAccent],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'LogIn',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
                MaterialButton(
                  minWidth: 0.0,
                  shape: CircleBorder(side: BorderSide(color: Colors.white),),
                  color: Colors.white70,
                  elevation: 3.0,
                  onPressed: () async {
                    dynamic result = await context.read<AuthService>().googleSI();
                    if(result == "Signed In Successfully"){
                      print('Signed In');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
                    }else{
                      print("Error");
                    }
                  },
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/google.png',),
                  ),
                ),
                MaterialButton(
                  shape: CircleBorder(side: BorderSide(color: Colors.white),),
                  color: Colors.white70,
                  elevation: 3.0,
                  minWidth: 0.0,
                  onPressed: (){

                  },
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/facebook.png',),
                  ),
                ),
                MaterialButton(
                  shape: CircleBorder(side: BorderSide(color: Colors.white),),
                  color: Colors.blue,
                  elevation: 3.0,
                  minWidth: 0.0,
                  clipBehavior: Clip.antiAlias,
                  onPressed: (){

                  },
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundImage: AssetImage('assets/twitter.png',),
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
