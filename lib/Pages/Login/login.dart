import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main/mainPage.dart';
import './signup.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NeoBanking",
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            color: Color(0xFFfafafa),
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:250),
                    _appName(),
                  Align(
                    alignment:Alignment.centerLeft,
                    child: 
                    
                      _loginText(),),
                    
                  _inputField(Icon(Icons.person_outline,size: 30,color: Color(0xffA6B0BD)),
                  "Username",
                    false
                  ),
                  _inputField(Icon(Icons.lock_outline,size: 30,color: Color(0xffA6B0BD)),
                      "Password",
                      true
                  ),
                  _loginBtn(context),
                  _dontHaveAcnt(),
                  _signUp(context),
                ],
              ),
            ),
        ),
        ),
      );

  }
}

Widget _signUp(BuildContext context) {
  return FlatButton(
    onPressed: () => {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (

                
              context){
                return SignUpPage();
              }
              )),
      
      print("Sign up pressed.")},
    child: Text(
      "SIGN UP NOW",
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Color(0xFF008FFF),
          fontWeight: FontWeight.w800,
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget _dontHaveAcnt() {
  return Text(
    "Don't have an account?",
    style: GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Color(0xffA6B0BD),
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
    ),
  );
}

Widget _loginBtn(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 20, bottom: 50),
    decoration: BoxDecoration(
      color: Color(0xff008FFF),
      borderRadius: BorderRadius.all(Radius.circular(50)),
      boxShadow: [
        BoxShadow(
        color: Color(0x60008FFF),
          blurRadius: 10,
          offset: Offset(0,5),
          spreadRadius: 0,
      ), ]

    ),
    child: FlatButton(
      onPressed: () => {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (

                
              context){
                return Home();
              }
              )),
        
        print('Sign in pressed.')},
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Text(
        "SIGN IN",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
      ),
    ),
  );
}

Widget _inputField(Icon prefixIcon, String hintText, bool isPassword) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 25,
          offset: Offset(0,5),
          spreadRadius: -25,
        ),
      ],
    ),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      obscureText: isPassword,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffA6B0BD),
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _appName() {
  return Container(
    margin: EdgeInsets.only(bottom: 100),
    child: Text(
      "NeoBank",
      style: GoogleFonts.nunito(
        textStyle: TextStyle(
          fontSize: 54,
          fontWeight: FontWeight.w800,
          color: Color(0xff000912),
          letterSpacing: 10,
        ),
      ),
    )
  );
}

Widget _loginText() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Text(
      "LOGIN",
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w800,
          color: Color(0xff000912),
        ),
      ),
    )
  );
}